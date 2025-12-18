
FROM python

COPY . . 

MAINTAINER Logesh-235

RUN pip install numpy 

ENV workdir_path /app/main

WORKDIR $path

ADD https://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war/2.397/jenkins.war $path

CMD ["python3","main.py"]

EXPOSE 8080
