#!/bin/bash

FILE1="/data/file1.txt"
FILE2="/data/file2.txt"
FILE_MERGE="/data/file_merge.txt"

if [[ ! -f "$FILE1" || ! -f "$FILE2" ]]; then
    echo "Один из файлов ($FILE1 или $FILE2) или оба файла отсутствует!"
    exit 1
fi

if [ ! -s "$FILE1" ]; then
    echo "$FILE1 пуст"
    exit 1
fi

if [ ! -s "$FILE2" ]; then
    echo "$FILE2  пуст"
    exit 1
fi

if [ -f "$FILE_MERGE" ]; then
    read -p "Файл $FILE_MERGE уже есть. Перезаписать(y or n)? " answer
    if [ "$answer" != "y" ] && [ "$answer" != "Y" ]; then
        echo "Вы отменили операцию"
        exit 1
    fi
fi

{
    echo "Содержимое $FILE1"
    cat "$FILE1"

    echo -e "\n Содержимое $FILE2"
    cat "$FILE2"
} > "$FILE_MERGE"

echo "Файлы объединены и загружены в $FILE_MERGE"