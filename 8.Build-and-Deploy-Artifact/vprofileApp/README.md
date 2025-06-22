# 🚀 Multi-Tier Web Application with Spring Framework

> A complete, enterprise-ready Spring-based web application that brings together user management, database, caching, messaging, search, and secure access control — all in one place.

---

## 🧽 Project Highlights

- 🔐 **User Management** with Spring MVC + Validation
- 🔒 **Spring Security** for Authentication & Authorization
- 🗓️ **MySQL** for persistent storage
- ⚡ **Memcached** caching layer
- 📬 **RabbitMQ** messaging queue
- 🔍 **Elasticsearch** for lightning-fast search
- 📁 **File upload** support (multipart)
- 🎨 Responsive **Bootstrap-based UI**

---

## 🧱 Architecture Diagram

Client (Browser)
   ↓
Controller Layer (Spring MVC)
   ↓
Service Layer (Business Logic)
   ↓
DAO Layer (Database Access)
   ↓
MySQL ↔ Memcached ↔ RabbitMQ ↔ Elasticsearch


---

## 🛠️ Tech Stack

| Layer      | Technology                               |
| ---------- | ---------------------------------------- |
| Backend    | Java, Spring MVC, Spring Security        |
| Frontend   | JSP, HTML, CSS, Bootstrap, JS            |
| Database   | MySQL                                    |
| Messaging  | RabbitMQ                                 |
| Caching    | Memcached                                |
| Search     | Elasticsearch                            |
| Build Tool | Maven                                    |
| Deployment | Apache Tomcat (or any Servlet container) |

---

## 📂 Project Structure

🔹 src/main/java/com/visualpathit/account/     # Controllers, Services, DAO
🔹 src/main/resources/                         # SQL Scripts, application.properties
🔹 src/main/webapp/WEB-INF/views/              # JSP View Templates
🔹 src/main/webapp/resources/                  # Static Assets (CSS, JS, etc.)
🔹 application.properties                      # Configuration File


---

## ⚙️ application.properties Highlights

properties
# Database
jdbc.url=jdbc:mysql://localhost:3306/yourdb
jdbc.username=youruser
jdbc.password=yourpass

# Spring View Resolver
spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp

# Spring Security
spring.security.user.name=admin
spring.security.user.password=admin123
spring.security.user.roles=ADMIN,USER

# File Upload
spring.servlet.multipart.max-file-size=10MB
spring.servlet.multipart.max-request-size=20MB

# Memcached
memcached.active.host=127.0.0.1
memcached.active.port=11211

# RabbitMQ
rabbitmq.address=localhost
rabbitmq.port=5672
rabbitmq.username=guest
rabbitmq.password=guest

# Elasticsearch
elasticsearch.host=localhost
elasticsearch.port=9200
elasticsearch.cluster=your-cluster
elasticsearch.node=node-1


---

## 🚀 Getting Started

### 1. Clone the Repository

bash
git clone https://github.com/yourusername/multi-tier-web-app.git
cd multi-tier-web-app


### 2. Set Up the Database

- Update MySQL credentials in application.properties
- Import the schema SQL script from src/main/resources/

### 3. Build & Run

bash
mvn clean install
mvn spring-boot:run


### 4. Open in Browser

http://localhost:8080/


---

## 📸 Screenshots

> 🗼️ Add UI screenshots here to showcase the login, dashboard, and search results.

---

## 🤝 Contributing

Contributions, bug reports, and feature requests are welcome!

1. Fork the repository
2. Create your feature branch: git checkout -b my-feature
3. Commit your changes: git commit -am 'Add feature'
4. Push to the branch: git push origin my-feature
5. Submit a pull request 🚀

---

> ℹ️ **Disclaimer:** The source code for this project was originally collected from my **Udemy instructor's GitHub repository** as part of my course material. See reference: [https://github.com/hkhcoder/vprofile-project](https://github.com/hkhcoder/vprofile-project)
