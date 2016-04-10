# Pull base image.
FROM ubuntu:14.04

RUN \
  apt-get update && \
  apt-get install -y autoconf unzip ca-certificates wget git vim cmake g++ make tmux && \
  git clone https://github.com/elisescu/dotfiles ~/dotfiles && cd ~ && \
  ln -s dotfiles/.tmux.conf && ln -s dotfiles/.vimrc && ln -s dotfiles/.vim && \
  ln -s dotfiles/.gitconf

VOLUME ["/docker", "/host"]

# Define working directory.
WORKDIR /workspace

CMD ["bash", "/bin/bash"]
