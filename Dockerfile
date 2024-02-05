FROM ubuntu:latest

RUN apt-get install -y ssh \
    wget \
    curl \
    python3

COPY . /app

RUN chmod -R 775 /app

CMD ["python3", "/app/run.py"]
