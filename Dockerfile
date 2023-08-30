FROM archlinux

# Packages
ENV PACKAGES \
    base-devel \
    bash-completion \
    curl \
    git \
    sudo \
    vim \
    wget

# Install packages
RUN pacman --noconfirm -Suy && pacman --noconfirm -S $PACKAGES

# Set a passwordless sudoer user
RUN useradd -m -G wheel -s /bin/bash megatron && \
    mkdir -p /etc/sudoers.d/ && \
    echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/nopasswd

# Switch to the megatron user
WORKDIR /home/megatron
USER megatron

# User environment
ENV TERM=linux
RUN echo 'PS1="\n\n>> archlinux \W \$ "' >> ~/.bashrc

CMD bash
