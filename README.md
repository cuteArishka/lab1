Задача № 16
Взять 2 произвольных текстовых файла и объединить их содержимое в третий текстовый файл. Перед каждым содержимым вывести имя файла.

Для запуска необходимо ввести в консоль следующие команды:

//собрать образ//
docker build -t merge-files .

//запустить контейнер//
docker run -it --rm -v "$(pwd):/data" merge-files
