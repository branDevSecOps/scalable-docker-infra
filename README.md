# 🚀 Terraform Project: Scalable Dockerized App on AWS

This project provisions a highly available and scalable infrastructure on AWS to host a Dockerized web application using:

- 🧱 **Terraform** for Infrastructure as Code
- 🐳 **Docker** for containerized app deployment
- ☁️ **AWS EC2** behind an Auto Scaling Group
- 🌐 **Application Load Balancer** (ALB)
- 🔒 **Security Groups** for controlled access
- 🤖 **GitHub Actions** for automated Docker image builds and deployment

---

## 📦 Components

- **VPC & Subnets**: Custom VPC with public subnets in two AZs
- **Launch Template**: EC2 instances bootstrapped with Docker
- **Auto Scaling Group**: Automatically maintains 2 instances
- **ALB**: Distributes traffic to healthy instances
- **Custom Docker Image**: Pulled from Docker Hub via CI/CD

---

## 🔧 Setup

1. Clone this repo
2. Add your SSH key to AWS as a key pair
3. Update `terraform.tfvars`:

```hcl
key_name = "your-key-name"
```

4. Deploy:

```bash
terraform init
terraform apply
```

---

## 🐳 Docker Image

Push your own app image to Docker Hub and update `user_data.sh` accordingly:

```bash
docker build -t youruser/yourapp:latest .
docker push youruser/yourapp:latest
```

---

## 🤖 GitHub Actions CI Pipeline

This project includes a GitHub Actions workflow that automatically builds and pushes your Docker image to Docker Hub on every commit to `main`.

### Setup:
1. Create the file `.github/workflows/docker-build.yml`
2. Add the following secrets in your repo:
   - `DOCKER_USERNAME`
   - `DOCKER_PASSWORD` (or Docker Hub access token)

The pipeline will:
- Checkout code
- Login to Docker Hub
- Build your Docker image
- Push it to Docker Hub

---

## ✅ Outputs

- Application Load Balancer DNS for public access
- VPC/Subnet/ASG IDs for easy reference

---

## 📜 License

MIT — Brandon-style. Build responsibly.


