FROM ubuntu:20.04

RUN apt update && \
    apt install -y python3-dev python3-pip

RUN pip3 install rasa[full]

COPY . /rasa

CMD cd rasa && rasa run --enable-api