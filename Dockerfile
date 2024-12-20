# Start from the latest Ubuntu image
FROM ubuntu:latest

# Update the package list
RUN apt-get update -y

# Install essential packages
RUN apt-get install -y \
    build-essential \
    curl \
    wget \
    git \
    vim \
    python3 \
    python3-pip \
    nodejs \
    npm \
    openjdk-11-jdk \
    lsb-release

# Install Docker (if you need Docker inside Docker)
RUN curl -fsSL https://get.docker.com | sh

# Install other packages (optional)
RUN apt-get install -y \
    apache2 \
    nginx \
    mysql-server \
    redis-server

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Expose ports
EXPOSE 80 443

# Run an Ubuntu bash shell
CMD ["/bin/bash"]
