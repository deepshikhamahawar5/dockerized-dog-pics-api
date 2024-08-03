# Dog Pics API

This is a simple RESTful API for uploading and managing dog pictures.

### Prerequisites

- Docker
- Docker Compose

# Docker and Docker Compose Installation on Ubuntu

Follow these steps to install Docker and Docker Compose on an Ubuntu system:

  ## Step 1: Update Package List

    - ```sh
    sudo apt-get update
  
  ## Step 2: Install Required Packages
    sudo apt-get install ca-certificates curl gnupg

  ## Step 3: Add Docker’s Official GPG Key
    sudo mkdir -m 0755 -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  
  ## Step 4: Set Up the Docker Repository
    echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo $VERSION_CODENAME) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

  ## Step 5: Update Package List Again
    sudo apt update
  
  ## Step 6: Install Docker and Docker Compose
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  
  ## Step 7: Add Your User to the Docker Group
     sudo usermod -aG docker ${USER}

  ## Step 8: Activate Group Changes
     newgrp docker

Now Docker and Docker Compose should be installed and ready to use. You can verify the installation by running:
    docker --version
    docker-compose --version

## Getting Started

1. Clone the repository
   - git clone https://github.com/deepshikhamahawar5/NodeAssessment.git
2- Start the server with `npm start`.
3. To run with Docker, use `docker compose up --build -d`.

## Setting Up the JWT Secret

### Generate a Secret Key: 
    We can use any random string as the secret key. For production environments, it should be a long, complex string to ensure security. But for this assessment I’ve generated a random key using this command:

    - `openssl rand -base64 32`

### Add the Secret Key to Your .env File:
    JWT_SECRET=your_generated_secret_key

## Steps to test APIs endpoints using Postman:
    Follow this documentation: https://docs.google.com/document/d/1PYrsWPmVWLEL6zjQCx935NjsKmYy35pZMwOFymI0Yps/edit#heading=h.r3gh5q42yspr

## API Endpoints

### Authentication

- `POST /api/auth/register`: Register a new user
- `POST /api/auth/login`: Login and get a token

### Dog Pics

- `POST /api/dogs`: Upload a dog pic (requires authentication)
- `DELETE /api/dogs/:id`: Delete a dog pic (requires authentication)
- `PUT /api/dogs/:id`: Update a dog pic (requires authentication)
- `GET /api/dogs/:id`: Fetch a dog pic by ID (requires authentication)
- `GET /api/dogs`: Fetch all dog pics (requires authentication)

## Code Structure
- src/app.js - Main application file
- config/mongoose.js - MongoDB connection configuration
- tests/ - Test files for the API

## To run tests, use the following command:
  - `docker-compose run app npm test`

## => Some useful commands for docker environment

#### 1. Start/Stop/restart Docker Containers
- Start 
  `docker compose up -d`
- Stop 
  `docker compose down`
- list all currently running containers
   `docker ps`
- View the Logs:
  To see the output of your console.log statements, check the logs of your running container:
   `docker compose logs app`


----------------------------------------------------------------------------------------------------------------------------------------------------

