# 🚀 Enterprise CI/CD Pipeline

[![CD](https://github.com/Khanrukku/enterprise-cicd-pipeline/actions/workflows/cd.yml/badge.svg)](https://github.com/Khanrukku/enterprise-cicd-pipeline/actions/workflows/cd.yml)

Production-ready CI/CD pipeline demonstrating modern DevOps practices using GitHub Actions, Docker, AWS ECS Fargate, and Terraform.

## 🌟 Live Demo

**Application URL:** http://100.24.56.235:3000/

### Available Endpoints:
- `GET /health` - Health check endpoint
- `GET /api/status` - Application status  
- `GET /api/data` - Sample data endpoint

## 📋 Features

- ✅ Automated testing with Jest
- ✅ Docker multi-stage builds  
- ✅ Automated deployment to AWS ECS
- ✅ Infrastructure as Code (Terraform)
- ✅ AWS ECS Fargate (serverless containers)
- ✅ Amazon ECR (container registry)
- ✅ CloudWatch logging and monitoring

## 🛠️ Tech Stack

- **CI/CD:** GitHub Actions
- **Containers:** Docker
- **Cloud:** AWS (ECS, ECR, VPC, CloudWatch)
- **IaC:** Terraform
- **Backend:** Node.js, Express.js
- **Testing:** Jest, Supertest

## 🚀 Quick Start

### Prerequisites
- Node.js 20+
- Docker
- AWS CLI
- Terraform

### Local Development
```bash
# Clone repository
git clone https://github.com/Khanrukku/enterprise-cicd-pipeline.git
cd enterprise-cicd-pipeline

# Install dependencies
npm install

# Run tests
npm test

# Start application
npm start
```

## ☁️ AWS Deployment

### 1. Deploy Infrastructure
```bash
cd terraform
terraform init
terraform apply
```

### 2. Setup GitHub Secrets

Add these secrets to your GitHub repository:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_REGION`
- `ECR_REPOSITORY`
- `ECS_CLUSTER`
- `ECS_SERVICE`

### 3. Trigger Deployment
```bash
git push origin main
```

## 💰 Cost

**Expected Monthly Cost: $0** (AWS Free Tier)

## 📚 Project Structure
```
enterprise-cicd-pipeline/
├── .github/workflows/    # CI/CD workflows
├── src/                  # Application code
├── tests/                # Unit tests
├── terraform/            # Infrastructure as Code
├── Dockerfile            # Container definition
└── package.json          # Dependencies
```

## 👨‍💻 Author

**Khanrukku**
- GitHub: [@Khanrukku](https://github.com/Khanrukku)

---

⭐ Star this repository if you found it helpful!

🚀 **Live Demo:** http://3.92.232.230:3000 
