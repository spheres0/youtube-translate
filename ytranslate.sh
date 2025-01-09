#!/usr/bin/env bash

VERSION='1.0.0'
[[ -n "${1:-}" ]] && URL="$1"

if [[ -z "${URL}" ]]; then
	echo "Current version: $VERSION";
	echo " $(basename $0) <url>"
	exit 0
fi

if ! command -v ffmpeg &>/dev/null; then
	echo "[ERROR] install ffmpeg"
	exit 1
fi

if ! command -v yt-dlp &>/dev/null; then
	if ! pip install yt-dlp &> /dev/null; then
		echo "[ERROR] install yt-dlp"
		exit 1
	fi
fi

if ! command -v vot-cli &>/dev/null; then
	if ! npm install -g vot-cli &> /dev/null; then
		echo "[ERROR] install vot-cli"
		exit 1
	fi
fi

title=$(yt-dlp --print filename -o "%(title)s" "${URL}" | sed 's/[^a-zA-Z0-9._-]/-/g' | sed 's/--*/-/g' | tr ' ' '_')
if [[ -z "${title}" ]]; then
	echo "[ERROR] file not found"
	exit 1
fi

yt-dlp -f "bestvideo[ext=mp4]" -o "${title}.part.mp4" "${URL}"
if [[ $? -ne 0 ]]; then
	echo "[ERROR] yt-dlp failed to download video."
	exit 1
fi

vot-cli --output "." --output-file "${title}.part.mp3" "${URL}"
if [[ $? -ne 0 ]]; then
	echo "[ERROR] vot-cli failed to download audio."
	exit 1
fi

ffmpeg -i "${title}.part.mp4" -i "${title}.part.mp3" -c copy "${title}.mp4" -nostdin
rm "${title}.part.mp4" "${title}.part.mp3"
