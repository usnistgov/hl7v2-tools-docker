# Pull base image.
FROM phusion/baseimage:0.9.22

ENV DEBIAN_FRONTEND noninteractive

# This is in accordance to : https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04
RUN apt-get update && \
	apt-get install -y curl unzip vim wget && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
