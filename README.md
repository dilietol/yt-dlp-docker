# yt-dlp-docker
Personal repository for yt-dlp deployment project

Yt-dlp is a software from https://github.com/yt-dlp/yt-dlp

The idea is to:
- to set up a docker image with yt-dlp installed
- to provide a way to schedule a yt-dlp script

Instructions:
- Open portainer
- select Build a new Image
- define a name (ie. test_abstrakct_docker-yt-dlp:0.3)
- set the url to the dockerfile: go to https://github.com/dilietol/yt-dlp-docker/blob/main/dockerfile and then copy the url to the raw content
- 