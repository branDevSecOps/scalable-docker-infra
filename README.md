# 🚀 Terraform Project: Scalable Dockerized App on AWS

This project provisions a highly available and scalable infrastructure on AWS to host a Dockerized web application using:

- 🧱 **Terraform** for Infrastructure as Code
- 🐳 **Docker** for containerized app deployment
- ☁️ **AWS EC2** behind an Auto Scaling Group
- 🌐 **Application Load Balancer** (ALB)
- 🔒 **Security Groups** for controlled access

---

## 📦 Components

- **VPC & Subnets**: Custom VPC with public subnets in two AZs
- **Launch Template**: EC2 instances bootstrapped with Docker
- **Auto Scaling Group**: Automatically maintains 2 instances
- **ALB**: Distributes traffic to healthy instances
- **Custom Docker Image**: Pulled from Docker Hub

---

## 🔧 Setup

1. Clone this repo
2. Add your SSH key to AWS as a key pair
3. Update `terraform.tfvars`
4. Deploy: terrafomrm init && terraform apply

🐳 Docker Image
You can push your own app image to Docker Hub and update user_data.sh accordingly:
docker build -t youruser/yourapp:latest .
docker push youruser/yourapp:latest

✅ Outputs
Application Load Balancer DNS for public access
VPC/Subnet/ASG IDs for easy reference

