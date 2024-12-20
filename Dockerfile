# Start from the latest Ubuntu image
FROM ubuntu:latest

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update -y && \
    apt-get install -y \
    bash \
    curl \
    vim \
    git \
    wget \
    htop \
    python3 \
    python3-pip \
    build-essential \
    net-tools \
    openssh-server \
    sudo \
    unzip

# Expose port 22 for SSH (for remote terminal access)
EXPOSE 22

# Install OpenSSH for remote terminal access (optional)
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# Set the default command to bash
CMD ["/bin/bash"]
