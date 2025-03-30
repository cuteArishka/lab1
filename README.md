Для запуска необходимо ввести в консоль следующие команды:
//собрать образ
docker build -t merge-files .

//запустить контейнер
docker run --rm -v "$(pwd):/data" merge-files
