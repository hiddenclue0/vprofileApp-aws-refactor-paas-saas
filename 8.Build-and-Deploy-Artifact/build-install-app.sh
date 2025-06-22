#!/bin/bash

# Set environment variables for application configuration

# Database connection settings
JDBC_URL="jdbc:mysql://db01:3306/accounts?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull"
JDBC_USERNAME="admin"
JDBC_PASSWORD="admin123"

# Memcached configuration
MEMCACHED_ACTIVE_HOST="mc01"
MEMCACHED_ACTIVE_PORT="11211"
MEMCACHED_STANDBY_HOST="127.0.0.2"
MEMCACHED_STANDBY_PORT="11211"

# RabbitMQ configuration
RABBITMQ_ADDRESS="rmq01"
RABBITMQ_PORT="5672"
RABBITMQ_USERNAME="test"
RABBITMQ_PASSWORD="test"

# Elasticsearch configuration
ELASTICSEARCH_HOST="localhost"
ELASTICSEARCH_PORT="9300"
ELASTICSEARCH_CLUSTER="vprofile"
ELASTICSEARCH_NODE="vprofilenode"

# Spring Security user credentials
SPRING_USER_NAME="admin_vp"
SPRING_USER_PASSWORD="admin_vp"
SPRING_USER_ROLES="ADMIN"

# Path to the application properties file
PROPERTIES_FILE="vprofileApp/src/main/resources/application.properties"

# Update JDBC (database) properties in the properties file
sed -i "s|^jdbc.url=.*|jdbc.url=${JDBC_URL}|" "$PROPERTIES_FILE"
sed -i "s|^jdbc.username=.*|jdbc.username=${JDBC_USERNAME}|" "$PROPERTIES_FILE"
sed -i "s|^jdbc.password=.*|jdbc.password=${JDBC_PASSWORD}|" "$PROPERTIES_FILE"

# Update Memcached properties in the properties file
sed -i "s|^memcached.active.host=.*|memcached.active.host=${MEMCACHED_ACTIVE_HOST}|" "$PROPERTIES_FILE"
sed -i "s|^memcached.active.port=.*|memcached.active.port=${MEMCACHED_ACTIVE_PORT}|" "$PROPERTIES_FILE"
sed -i "s|^memcached.standBy.host=.*|memcached.standBy.host=${MEMCACHED_STANDBY_HOST}|" "$PROPERTIES_FILE"
sed -i "s|^memcached.standBy.port=.*|memcached.standBy.port=${MEMCACHED_STANDBY_PORT}|" "$PROPERTIES_FILE"

# Update RabbitMQ properties in the properties file
sed -i "s|^rabbitmq.address=.*|rabbitmq.address=${RABBITMQ_ADDRESS}|" "$PROPERTIES_FILE"
sed -i "s|^rabbitmq.port=.*|rabbitmq.port=${RABBITMQ_PORT}|" "$PROPERTIES_FILE"
sed -i "s|^rabbitmq.username=.*|rabbitmq.username=${RABBITMQ_USERNAME}|" "$PROPERTIES_FILE"
sed -i "s|^rabbitmq.password=.*|rabbitmq.password=${RABBITMQ_PASSWORD}|" "$PROPERTIES_FILE"

# Update Elasticsearch properties in the properties file
sed -i "s|^elasticsearch.host=.*|elasticsearch.host=${ELASTICSEARCH_HOST}|" "$PROPERTIES_FILE"
sed -i "s|^elasticsearch.port=.*|elasticsearch.port=${ELASTICSEARCH_PORT}|" "$PROPERTIES_FILE"
sed -i "s|^elasticsearch.cluster=.*|elasticsearch.cluster=${ELASTICSEARCH_CLUSTER}|" "$PROPERTIES_FILE"
sed -i "s|^elasticsearch.node=.*|elasticsearch.node=${ELASTICSEARCH_NODE}|" "$PROPERTIES_FILE"

# Update Spring Security user credentials in the properties file
sed -i "s|^spring.security.user.name=.*|spring.security.user.name=${SPRING_USER_NAME}|" "$PROPERTIES_FILE"
sed -i "s|^spring.security.user.password=.*|spring.security.user.password=${SPRING_USER_PASSWORD}|" "$PROPERTIES_FILE"
sed -i "s|^spring.security.user.roles=.*|spring.security.user.roles=${SPRING_USER_ROLES}|" "$PROPERTIES_FILE"

# Print success message
echo "Properties updated successfully."


# Check if Maven 3.9.10 is installed, install if not
if ! command -v mvn &> /dev/null || [[ "$(mvn -v | grep 'Apache Maven 3.9.10')" == "" ]]; then
     echo "Maven 3.9.10 is not installed. Installing Maven 3.9.10..."
     sudo apt-get update
     sudo apt-get install -y wget tar
     wget https://dlcdn.apache.org/maven/maven-3/3.9.10/binaries/apache-maven-3.9.10-bin.tar.gz -O /tmp/apache-maven-3.9.10-bin.tar.gz
     sudo tar -xzvf /tmp/apache-maven-3.9.10-bin.tar.gz -C /opt
     sudo ln -sf /opt/apache-maven-3.9.10/bin/mvn /usr/bin/mvn
fi

# Check if Java 17.0.15 is installed, install if not
if ! command -v java &> /dev/null || [[ "$(java -version 2>&1 | grep '17.0.15')" == "" ]]; then
     echo "Java 17.0.15 is not installed. Installing OpenJDK 17..."
     sudo apt-get update
     sudo apt-get install -y openjdk-17-jdk
fi

mvn install
