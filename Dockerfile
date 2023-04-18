FROM --platform=linux/amd64 ubuntu:22.04

WORKDIR /workspace
RUN apt update  && \
    apt install -y wget \
    libfontconfig \
    libdbus-1-dev \
    libxcb*dev \
    libx11-xcb-dev \
    libxext-dev \
    libxkbcommon-x11-dev \
    libgl1-mesa-dev 

WORKDIR /workspace
RUN wget https://gpt4all.io/installers/gpt4all-installer-linux.run && \
    chmod +x gpt4all-installer-linux.run 
    # ./gpt4all-installer-linux.run
