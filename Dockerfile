# you can save the files you want to replace to a folder, then copy it into to the docker
# using the latest build of the official docker
FROM tindy2013/subconverter:latest

ENV http_proxy=http://host.docker.internal:7890
ENV https_proxy=http://host.docker.internal:7890
# subconverter folder is located in /base/, which has the same structure as the base/ folder in the repository
# COPY Clash/ /base/
COPY Clash/ /clash/
# expose internal port
EXPOSE 25500
# notice that you still need to use '-p 25500:25500' when starting the docker to forward this port
