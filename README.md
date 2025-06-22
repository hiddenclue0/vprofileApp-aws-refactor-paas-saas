# ☁️ Refactoring with AWS

## 🧩 Project Overview

This project demonstrates **Refactoring** (also known as Re-architecture) of a previously lift-and-shifted enterprise Java application to **AWS managed services** using **PaaS and SaaS offerings**.

Instead of manually managing infrastructure using EC2, we are utilizing services such as:
- Elastic Beanstalk (for application deployment and scaling)
- RDS (for relational database)
- Amazon MQ (for messaging)
- ElastiCache (for caching)
- S3 (for artifact storage)
- CloudFront (for global CDN)
- Route 53 (for DNS)

This re-architecture boosts **scalability**, **availability**, and **reduces operational overhead**.

---

## 📌 Objective

To create a **cloud-native, highly available, low-maintenance**, and **cost-effective** version of an enterprise application by replacing infrastructure components with AWS managed services.

---

## 🧱 Architecture Summary

```plaintext
User Browser
    ↓
Route 53 → CloudFront (CDN + SSL)
    ↓
Elastic Load Balancer (via Elastic Beanstalk)
    ↓
EC2 Instance (managed by Beanstalk, auto-scaled)
    ↓
 ┌────────────┬────────────┬────────────┐
 ↓            ↓            ↓            ↓
RDS      ElastiCache    Amazon MQ     S3
```

---

## 🛠 AWS Services Used

| AWS Service           | Purpose                                | Replaces                     |
|-----------------------|----------------------------------------|------------------------------|
| Elastic Beanstalk     | App deployment, scaling, monitoring    | EC2 + Tomcat + Load Balancer |
| Amazon RDS (MySQL)    | Relational Database                    | MySQL on EC2                 |
| Amazon ElastiCache    | In-memory caching                      | Memcached on EC2             |
| Amazon MQ (ActiveMQ)  | Messaging queue                        | RabbitMQ on EC2              |
| Amazon S3             | Artifact storage                       | NFS/SCP-based deployment     |
| Amazon CloudFront     | CDN for static/dynamic content         | -                            |
| Amazon Route 53       | Public DNS management                  | Manual DNS                   |
| Amazon CloudWatch     | Monitoring and alerts                  | Manual tooling               |

---

## 🚀 Flow of Execution

1. Login to AWS Console and create key pairs
2. Create security groups for backend services
3. Launch RDS, ElastiCache, and Amazon MQ
4. Launch EC2 helper instance to initialize RDS
5. Deploy application using Elastic Beanstalk
6. Configure Beanstalk health checks to `/login`
7. Build and upload WAR/JAR to S3 or directly via Beanstalk
8. Set up CloudFront with ACM for HTTPS
9. Configure Route 53 with domain pointing to CloudFront
10. Access application and validate integrations

---

## 📂 Repository Structure

```plaintext
refactoring-with-aws/
├── README.md
├── terraform/               # Infrastructure as Code (planned)
├── diagrams/                # Architecture diagrams
├── artifacts/               # Application artifacts or WAR files
├── docs/                    # Additional documentation
└── scripts/                 # Helper scripts (e.g., DB init)
```

---

## 🔗 Related Projects (References)

1. **Lift and Shift AWS Deployment**  
   [aws-lift-and-shift-enterprise-app](https://github.com/hiddenclue0/aws-lift-and-shift-enterprise-app)

2. **Local Multi-Tier Setup Using Vagrant**  
   [Multi-Tier WebApp Vagrant Setup](https://github.com/hiddenclue0/Multi-Tier-WebApp-Vagrant-Setup-Manually-.git)

3. **Spring-Based Enterprise Web App**  
   [spring-multi-tier-enterprise-app](https://github.com/hiddenclue0/spring-multi-tier-enterprise-app.git)

---

## 👨‍💻 Author

**Jakir Hosen**  
Email: hiddenclue0@gmail.com  
GitHub: [hiddenclue0](https://github.com/hiddenclue0)

---
