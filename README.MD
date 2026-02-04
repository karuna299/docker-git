# CI/CD Task – Docker Swarm

## Overview

This repository is submitted as a **DevOps task**. The task demonstrates how an application is **built, pushed, and deployed automatically** using **GitHub Actions** and **Docker Swarm**.

The goal is to show understanding of:

* CI/CD flow
* Docker image lifecycle
* Docker Swarm–based deployment

---

## Task Description

On every push to the `main` branch:

* A Docker image is built
* The image is tagged uniquely
* The image is pushed to Docker Hub
* The application is deployed on an EC2 instance using Docker Swarm

---

## Tools Used

* AWS EC2
* Terraform
* Ansible
* Docker
* Docker Swarm
* GitHub Actions
* Docker Hub

---

## Implementation Summary

* **Terraform** provisions the EC2 instance
* **Ansible** installs Docker and initializes Docker Swarm
* **GitHub Actions** handles image build, tag, and push
* Deployment is performed using:

```bash
docker stack deploy -c docker-compose.yml app
```

Docker Swarm pulls the image if required and updates the running service when the image tag changes.

---

## Verification

The following commands can be used to verify the deployment on EC2:

```bash
docker info | grep Swarm
docker stack ls
docker service ls
docker service ps app_app
docker service logs app_app
```

---

## Notes

* This is a single-node Docker Swarm setup
* The focus is on deployment automation, not application complexity
* The repository is structured only to support the task requirements
