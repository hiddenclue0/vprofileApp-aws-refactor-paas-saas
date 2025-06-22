# 🚀 vprofileApp: Cloud-Native Refactoring with AWS Managed Services

Welcome to the **vprofileApp Cloud-Native Refactoring Guide**!  
This project transforms the classic multi-tier Spring Boot vProfile app into a modern, scalable, and maintainable architecture using **AWS managed services**.

---

## 📘 Overview

We re-architect a previously lift-and-shifted Spring Boot enterprise app using AWS managed services such as **Elastic Beanstalk, RDS, ElastiCache, Amazon MQ, CloudFront, Route 53, and S3**.  
The goal: **Eliminate direct EC2 management** and adopt highly available, scalable, and easy-to-operate cloud-native solutions.

---

## 🌐 Why Refactor?

| From                                   | To                                                      |
|-----------------------------------------|---------------------------------------------------------|
| Manual EC2 provisioning, local VMs      | Fully managed AWS services                              |
| High operational overhead               | Automated deployments, cloud-native best practices      |

> **Note:** This is a refactoring of an earlier lift-and-shift migration, now leveraging AWS-native capabilities for maximum efficiency.

---

## 🏗️ Solution Architecture

```mermaid
graph TD
        A[Route 53<br>DNS] --> B[CloudFront<br>CDN]
        B --> C[Elastic Beanstalk<br>(Spring Boot App)]
        C --> D[RDS<br>(MySQL)]
        C --> E[ElastiCache<br>(Memcached)]
        C --> F[Amazon MQ<br>(RabbitMQ)]
```

- **Elastic Beanstalk:** Automated deployment & scaling
- **RDS:** Managed MySQL database
- **ElastiCache:** High-speed caching
- **Amazon MQ:** Reliable messaging
- **Route 53 & CloudFront:** Global DNS & CDN
- **IAM & Security Groups:** Secure, least-privilege access

---

## ⚙️ AWS Services Used

| Service              | Purpose                                 | Replaces                        |
|----------------------|-----------------------------------------|---------------------------------|
| Elastic Beanstalk    | App hosting, ELB & Auto Scaling         | EC2 + Tomcat + ALB              |
| Amazon RDS           | Managed MySQL DB                        | MySQL on EC2                    |
| Amazon ElastiCache   | In-memory caching (Memcached)           | Memcached on EC2                |
| Amazon MQ            | Managed messaging (ActiveMQ)            | RabbitMQ on EC2                 |
| Amazon S3            | Artifact storage                        | NFS on EC2                      |
| Amazon CloudFront    | CDN for global content delivery         | -                               |
| Amazon Route 53      | DNS service                             | Manual DNS config or GoDaddy    |
| Amazon CloudWatch    | Logs, metrics, alarms                   | Manual log collection           |

---

## 📁 Project Structure

```plaintext
refactoring-with-aws/
├── README.md
├── 1.Security-Group-And-Keypairs/
│   └── steps-guide-image/
├── 2.RDS/
│   └── steps-guide-image/
├── 3.Elastic-Cache/
│   └── steps-guide-image/
├── 4.Amazon-MQ/
│   └── steps-guide-image/
├── 5.DB-Initialization/
│   └── steps-guide-image/
├── 6.Beanstak/
│   └── steps-guide-image/
├── 7.update-security-group-collect-endpoint-each-service/
│   └── steps-guide-image/
├── 8.Build-and-Deploy-Artifact/
│   ├── build-install-app.sh
│   ├── steps-guide-image/
│   └── vprofileApp/
│       ├── pom.xml
│       ├── rmq.repo
│       └── src/
│           ├── main/
│           │   ├── java/
│           │   │   └── com/visualpathit/account/
│           │   │       ├── beans/
│           │   │       ├── controller/
│           │   │       ├── model/
│           │   │       ├── repository/
│           │   │       ├── service/
│           │   │       ├── utils/
│           │   │       └── validator/
│           │   ├── resources/
│           │   │   ├── accountsdb.sql
│           │   │   ├── application.properties
│           │   │   ├── db_backup.sql
│           │   │   ├── logback.xml
│           │   │   └── validation.properties
│           │   └── webapp/
│           │       ├── META-INF/
│           │       ├── WEB-INF/
│           │       └── resources/
│           └── test/
│               └── java/com/visualpathit/account/
│                   ├── controllerTest/
│                   ├── modelTest/
│                   └── setup/
└── 9.summerize-clean/
        └── steps-guide-image/
```

> 📸 **Each step includes visual guides and screenshots in `steps-guide-image/` folders.**

---

## 🛠️ Step-by-Step Implementation

### 1. Security Groups & Key Pairs
- Create least-privilege security groups for each service.
- Generate SSH key pairs for secure access.

### 2. Amazon RDS (MySQL)
- Launch RDS with multi-AZ (optional) for high availability.
- Configure DB credentials and networking.

### 3. ElastiCache (Memcached)
- Deploy a Memcached cluster.
- Integrate with the app for caching.

### 4. Amazon MQ (RabbitMQ)
- Provision Amazon MQ.
- Securely connect the app to the message broker.

### 5. Database Initialization
- Use `accountsdb.sql` and `db_backup.sql` to set up schema and data.

### 6. Elastic Beanstalk Deployment
- Package the app as a WAR.
- Deploy via EB CLI or AWS Console.
- Set environment variables for DB, MQ, and Cache endpoints.

### 7. Update App Config
- Collect all service endpoints.
- Update `application.properties` for seamless integration.

### 8. Build & Deploy Artifact
- Build with Maven.
- Use `build-install-app.sh` for automated deployment.

### 9. Finalize & Clean Up
- Test the deployment.
- Remove unused resources.
- Document endpoints and costs.

---

## ✅ Testing Checklist

- [x] Application UI loads via CloudFront
- [x] RDS database operations succeed
- [x] Cache hit/miss confirmed in ElastiCache
- [x] Messaging via Amazon MQ operational
- [x] Logs visible in CloudWatch

---

## 🧰 Prerequisites

- AWS Account with IAM permissions
- AWS CLI & EB CLI installed
- Maven installed
- SSH Key for access
- Familiarity with Spring Boot & AWS

---

## 📸 Visual Documentation

Find step-by-step screenshots and configuration images in each `steps-guide-image/` directory.

---

## 🔗 Related Repositories

| Repository | Description |
|------------|-------------|
| [vprofileApp-Lift-and-Shift-AWS](https://github.com/hiddenclue0/vprofileApp-Lift-and-Shift-AWS.git) | Previous EC2-based migration |
| [vprofileApp-deployment-manually](https://github.com/hiddenclue0/vprofileApp-deployment-manually.git) | Original VM-based deployment |
| [vprofileApp](https://github.com/hiddenclue0/vprofileApp.git) | The original Spring Boot app |

---

## ✨ Key Highlights

- 🚀 Modernized with AWS managed services
- 📈 Improved scalability & reliability
- 🛠️ Real-world DevOps & cloud integration
- 👨‍💻 Perfect for DevOps, cloud engineers, and architects

---

## 👤 Author

**Md Jakir Hosen**  
DevOps Engineer | AWS Cloud Enthusiast  
GitHub: [@hiddenclue0](https://github.com/hiddenclue0)

---
