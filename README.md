# YouTube Translate

### Translate videos effortlessly.

This script allows you to easily translate videos from YouTube and other online platforms. It uses [`vot-cli`](https://github.com/FOSWLY/vot-cli) for translation, [`spleeter`](https://github.com/deezer/spleeter) for separating audio into vocals and accompaniment, and other command-line utilities like [`ffmpeg`](https://ffmpeg.org/) and [`yt-dlp`](https://github.com/yt-dlp/yt-dlp). The script is designed to be flexible, working on both local machines and in Google Colab.

## Features

* Automatic translation of videos from YouTube and other sources.
* Separation of audio into vocals and accompaniment for better translation quality.
* Works on both local machines and in Google Colab.
* Support for different languages (specified in vot-cli parameters).
* Possibility to choose the video resolution (parameter `-r`).
* Possibility to set the source language (parameter `-f`) and the target language (parameter `-t`).

## Usage

### Local

1. Install the necessary dependencies (ffmpeg, spleeter, yt-dlp, vot-cli, npm/pip).
2. Make [`ytranslate.sh`](https://raw.githubusercontent.com/alex2844/youtube-translate/main/ytranslate.sh) executable: `chmod +x ytranslate.sh`.
3. Run the script:

    ```bash
    ./ytranslate.sh [OPTIONS] <URL>
    ```

    **Options:**

    * `-h, --help`: Show help message.
    * `-v, --version`: Show script version.
    * `-r, --height=<int>`: Set video height.
    * `-f, --from_lang=<str>`: Set source language (e.g., en, ru).
    * `-t, --to_lang=<str>`: Set target language (e.g., ru, en, kk).

    **Example:**

    ```bash
    ./ytranslate.sh -f en -t ru -r 720 https://www.youtube.com/watch?v=xxxxxxxxxxx
    ```

### Google Colab

1. Open the [`ytranslate.ipynb`](https://colab.research.google.com/github/alex2844/youtube-translate/blob/main/ytranslate.ipynb) file in Google Colab.
2. Fill in the parameters in the first code block (URL, height, translation languages).
3. Run all the cells.
4. After completion, you can download or save the translated video to Google Drive.

## Installing Dependencies

If you don't have dependencies, you can install it with `INSTALL_DEPENDENCIES=1` variable.

```bash
INSTALL_DEPENDENCIES=1 ./ytranslate.sh [OPTIONS] <URL>
```

Note: for installing dependencies, root permission are required.

---

### Переводите видео без усилий.

Этот скрипт позволяет легко переводить видео с YouTube и других онлайн-платформ. Он использует [`vot-cli`](https://github.com/FOSWLY/vot-cli) для перевода, [`spleeter`](https://github.com/deezer/spleeter) для разделения аудио на голос и аккомпанемент, а также другие утилиты командной строки, такие как [`ffmpeg`](https://ffmpeg.org/) и [`yt-dlp`](https://github.com/yt-dlp/yt-dlp). Скрипт разработан для гибкости, работая как на локальных машинах, так и в Google Colab.

## Возможности

* Автоматический перевод видео с YouTube и других источников.
* Разделение аудио на голос и аккомпанемент для более качественного перевода.
* Работает как на локальных машинах, так и в Google Colab.
* Поддержка разных языков (указано в параметрах vot-cli).
* Возможность выбора разрешения видео (параметр `-r`).
* Возможность установки языка оригинала (параметр `-f`) и языка перевода (параметр `-t`).

## Использование

### Локально

1. Установите необходимые зависимости (ffmpeg, spleeter, yt-dlp, vot-cli, npm/pip).
2. Сделайте [`ytranslate.sh`](https://raw.githubusercontent.com/alex2844/youtube-translate/main/ytranslate.sh) исполняемым: `chmod +x ytranslate.sh`.
3. Запустите скрипт:

    ```bash
    ./ytranslate.sh [ОПЦИИ] <URL>
    ```

    **Опции:**

    * `-h, --help`: Показать справку.
    * `-v, --version`: Показать версию скрипта.
    * `-r, --height=<int>`: Установить высоту видео.
    * `-f, --from_lang=<str>`: Установить язык оригинала (например: en, ru).
    * `-t, --to_lang=<str>`: Установить язык перевода (например: ru, en, kk).

    **Пример:**

    ```bash
    ./ytranslate.sh -f en -t ru -r 720 https://www.youtube.com/watch?v=xxxxxxxxxxx
    ```

### Google Colab

1. Откройте файл [`ytranslate.ipynb`](https://colab.research.google.com/github/alex2844/youtube-translate/blob/main/ytranslate.ipynb) в Google Colab.
2. Заполните параметры в первом блоке кода (URL, высота, языки перевода).
3. Запустите все ячейки.
4. После завершения, вы сможете скачать или сохранить переведённое видео в Google Drive.

## Установка Зависимостей

Если у вас не установлены зависимости, можно установить их автоматически установив переменную `INSTALL_DEPENDENCIES=1`.

```bash
INSTALL_DEPENDENCIES=1 ./ytranslate.sh [ОПЦИИ] <URL>
```

Обратите внимание, что для установки зависимостей, требуются права root.

---

## Youtube
| [![google][google_img]][google_url] | [![linux][linux_img]][linux_url]
| --- | ---

[google_img]: https://img.youtube.com/vi/7-rYQ2QHXgo/0.jpg "Google Colab"
[google_url]: https://youtu.be/7-rYQ2QHXgo
[linux_img]: https://img.youtube.com/vi/gNvPf7nGXFQ/0.jpg "Linux"
[linux_url]: https://youtu.be/gNvPf7nGXFQ
