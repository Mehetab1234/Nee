# Use the latest Ubuntu image
FROM ubuntu:latest

# Set non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Install basic tools
RUN apt-get update && \
    apt-get install -y \
    curl \
    wget \
    git \
    vim \
    bash \
    python3 \
    python3-pip \
    openssh-server \
    build-essential

# Install Wetty (optional for web terminal)
RUN apt-get install -y nodejs npm
RUN npm install -g wetty

# Expose port for SSH or Wetty (Web Terminal)
EXPOSE 22
EXPOSE 3000

# Start Wetty for web-based terminal (if desired)
CMD ["wetty", "--port", "3000", "--ssh-host", "localhost", "--ssh-port", "22"]
