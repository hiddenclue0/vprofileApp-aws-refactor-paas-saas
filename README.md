# 🚀 vprofileApp: Cloud-Native Refactoring with AWS Managed Services

Welcome to the **vprofileApp Cloud-Native Refactoring Guide**!\
This project transforms the classic multi-tier Spring Boot vProfile app into a modern, scalable, and maintainable architecture using **AWS managed services**.

---

## 📘 Overview

We re-architect a previously lift-and-shifted Spring Boot enterprise app using AWS managed services such as **Elastic Beanstalk, RDS, ElastiCache, Amazon MQ, CloudFront, Route 53, and S3**.\
The goal: **Eliminate direct EC2 management** and adopt highly available, scalable, and easy-to-operate cloud-native solutions.

---

## 🌐 Why Refactor?

| From                               | To                                                 |
| ---------------------------------- | -------------------------------------------------- |
| Manual EC2 provisioning, local VMs | Fully managed AWS services                         |
| High operational overhead          | Automated deployments, cloud-native best practices |

> **Note:** This is a refactoring of an earlier lift-and-shift migration, now leveraging AWS-native capabilities for maximum efficiency.

---

## 🏗️ Solution Architecture

```mermaid
    A[User Request] --> B[CloudFront (CDN)]
    B --> C[Route 53 (DNS)]
    C --> D[Elastic Beanstalk<br/>(Spring Boot App)]
    D --> E[RDS (MySQL)]
    D --> F[ElastiCache (Memcached)]
    D --> G[Amazon MQ (RabbitMQ)]
```


- **Elastic Beanstalk:** Automated deployment & scaling
- **RDS:** Managed MySQL database
- **ElastiCache:** High-speed caching
- **Amazon MQ:** Reliable messaging
- **Route 53 & CloudFront:** Global DNS & CDN
- **IAM & Security Groups:** Secure, least-privilege access

---

## ⚙️ AWS Services Used

| Service            | Purpose                         | Replaces                     |
| ------------------ | ------------------------------- | ---------------------------- |
| Elastic Beanstalk  | App hosting, ELB & Auto Scaling | EC2 + Tomcat + ALB           |
| Amazon RDS         | Managed MySQL DB                | MySQL on EC2                 |
| Amazon ElastiCache | In-memory caching (Memcached)   | Memcached on EC2             |
| Amazon MQ          | Managed messaging (ActiveMQ)    | RabbitMQ on EC2              |
| Amazon S3          | Artifact storage                | NFS on EC2                   |
| Amazon CloudFront  | CDN for global content delivery | -                            |
| Amazon Route 53    | DNS service                     | Manual DNS config or GoDaddy |
| Amazon CloudWatch  | Logs, metrics, alarms           | Manual log collection        |

---

## 📁 Project Structure & Visual Guide

```plaintext
refactoring-with-aws/
├── 1.Security-Group-And-Keypairs/         # SG + Key Pair creation (includes .png files)
├── 2.RDS/                                 # RDS setup steps and screenshots
├── 3.Elastic-Cache/                       # ElastiCache configuration
├── 4.Amazon-MQ/                           # Amazon MQ with RabbitMQ config
├── 5.DB-Initialization/                   # Temp EC2 and DB setup
├── 6.Beanstak/                            # Elastic Beanstalk environment creation
├── 7.update-security-group-collect-endpoint-each-service/ # Endpoint + SG edits
├── 8.Build-and-Deploy-Artifact/          # Source code, Maven build, Beanstalk deploy
├── 9.summerize-clean/                     # CloudFront & finalization steps
└── README.md                              # This documentation
```

> 📸 **Each directory includes visual **``** guides or scripts as needed.**

---

## 🛠️ Step-by-Step Implementation

### 1. Security Groups & Key Pairs

- Create backend SG
- SSH key generation for safe access

### 2. Amazon RDS (MySQL)

- Launch RDS
- Use parameter and subnet groups

### 3. ElastiCache (Memcached)

- Create parameter & subnet group
- Launch cache cluster and configure

### 4. Amazon MQ (RabbitMQ)

- Use Amazon MQ console
- Create broker, user/pass, networking settings

### 5. Database Initialization

- Spin up a temp EC2 instance
- Use `ubuntu-database-install-script.sh`
- Use provided `.sql` files

### 6. Elastic Beanstalk Deployment

- Package with Maven (`vprofileApp` source)
- Use `build-install-app.sh`
- Deploy `.war` file

### 7. Update App Config

- Grab endpoints from RDS, MQ, and Cache
- Edit `application.properties`

### 8. Build & Deploy Artifact

- Maven build
- Manual upload or CLI deployment to Beanstalk

### 9. Finalize & Clean Up

- Validate CloudFront, endpoints, logs
- Remove unused resources
- Save ARNs, secrets, and pricing info

---

## ✅ Testing Checklist

-

---

## 🧰 Prerequisites

- Active AWS account
- IAM with EC2, RDS, Beanstalk, S3, MQ permissions
- AWS CLI & EB CLI
- Maven
- SSH key pair access
- Familiarity with Spring Boot + AWS

---

## 🔗 Related Repositories

| Repository                                                                                            | Description                 |
| ----------------------------------------------------------------------------------------------------- | --------------------------- |
| [vprofileApp-Lift-and-Shift-AWS](https://github.com/hiddenclue0/vprofileApp-Lift-and-Shift-AWS.git)   | EC2-based migration version |
| [vprofileApp-deployment-manually](https://github.com/hiddenclue0/vprofileApp-deployment-manually.git) | VM-based legacy deployment  |
| [vprofileApp](https://github.com/hiddenclue0/vprofileApp.git)                                         | Original Spring Boot source |

---

## ✨ Key Highlights

- 🚀 Cloud-native AWS architecture
- 📈 High scalability and availability
- 🛠️ Real-world AWS DevOps practices
- 👨‍💻 Ideal for DevOps learners, AWS certification practice

---

## 👤 Author

**Md Jakir Hosen**\
DevOps Engineer | AWS Cloud Enthusiast\
GitHub: [@hiddenclue0](https://github.com/hiddenclue0)

