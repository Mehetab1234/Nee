# Use the latest Ubuntu image
FROM ubuntu:latest

# Set environment variable to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install essential packages
RUN apt-get update -y && \
    apt-get install -y \
    curl \
    wget \
    git \
    vim \
    bash \
    openssh-server \
    sudo \
    python3 \
    python3-pip

# Install Wetty (optional for a web terminal)
RUN apt-get install -y nodejs npm
RUN npm install -g wetty

# Expose port for SSH (22) or Web Terminal (3000 for Wetty)
EXPOSE 22
EXPOSE 3000

# Set the default command to run Wetty for web-based terminal
CMD ["wetty", "--port", "3000", "--ssh-host", "localhost", "--ssh-port", "22"]
