# yt-dlp-docker
Personal repository for yt-dlp deployment project

Yt-dlp is a software from https://github.com/yt-dlp/yt-dlp

The idea is to:
- to set up a docker image with yt-dlp installed
- to provide a way to schedule a yt-dlp script

Instructions:
- Open portainer
- select Build a new Image
- define a name (ie. yt-dlp-docker:0.1)
- set the url to the dockerfile: https://raw.githubusercontent.com/dilietol/yt-dlp-docker/main/dockerfile
- Build Image
- Create folders on server for downloads, config & log (if needed, you can also share these folders on samba server in order to access to them from network.
- Put file "Source - Playlists.txt" into config directory
- create container named yt-dlp01 using image yt-dlp-docker:0.1 and mounting volumes config, downloads & log
