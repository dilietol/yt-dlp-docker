FROM python:bullseye

RUN apt-get -y update && \
    apt-get install -y ffmpeg bash python3 python3-pip &&\
    apt-get -y update && \
    apt-get clean all && \
    python3 -m pip install --upgrade git+https://github.com/yt-dlp/yt-dlp.git@release && \
    python3 -m pip install apprise

VOLUME [/config /downloads]

RUN mkdir /scripts

WORKDIR /scripts

RUN curl -SL https://raw.githubusercontent.com/abstrakct/docker-yt-dlp/master/run-youtube-dl.sh --output /scripts/run-youtube-dl.sh
RUN curl -SL https://raw.githubusercontent.com/abstrakct/docker-yt-dlp/master/do-notify.sh --output /scripts/do-notify.sh
RUN chmod +x /scripts/run-youtube-dl.sh && chmod +x /scripts/do-notify.sh

CMD /run-youtube-dl.sh