FROM ubuntu:latest

WORKDIR /data

RUN apt-get update && apt-get install -y bash

COPY script.sh /script.sh
COPY file1.txt /data/file1.txt
COPY file2.txt /data/file2.txt
RUN chmod +x /script.sh
CMD ["/bin/bash","/script.sh"]