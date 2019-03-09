# source: https://bytefreaks.net/gnulinux/bash/ffmpeg-extract-audio-from-mkv-to-mp3
find . -type f -name "*.mkv" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -c:a libmp3lame -y "${FILE%.mkv}.mp3";' _ '{}' \;

