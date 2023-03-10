FROM python:bullseye

RUN apt-get -y update && \
    apt-get install -y ffmpeg bash python3 python3-pip &&\
    apt-get -y update && \
    apt-get clean all && \
    python3 -m pip install --upgrade git+https://github.com/yt-dlp/yt-dlp.git@release && \
    python3 -m pip install apprise

VOLUME [/config /downloads /log]

RUN mkdir /scripts

WORKDIR /scripts

RUN curl -SL https://raw.githubusercontent.com/dilietol/yt-dlp-docker/main/run-yt-dlp.sh --output /scripts/run-yt-dlp.sh
RUN chmod +x /scripts/run-yt-dlp.sh

ENTRYPOINT /scripts/run-yt-dlp.sh
