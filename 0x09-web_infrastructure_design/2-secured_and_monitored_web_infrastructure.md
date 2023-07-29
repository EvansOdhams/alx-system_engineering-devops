# Secured and Monitored Web Infrastructure - Infrastructure Design

In this document, we will design a three-server web infrastructure that hosts the website www.foobar.com. The infrastructure will be secured, serve encrypted traffic over HTTPS, and include monitoring capabilities.

## Requirements

- 3 servers
- 3 firewalls
- 1 SSL certificate to serve www.foobar.com over HTTPS
- 3 monitoring clients (data collector for Sumologic or other monitoring services)

## Components

### 1. Servers (3)

- Three servers are used to provide redundancy and improve high availability.
- Each server has a public IP address and can handle incoming traffic.

### 2. Firewalls (3)

- Firewalls are added to enhance security by controlling incoming and outgoing network traffic.
- Each server has a dedicated firewall to restrict access to specific ports and services.

### 3. SSL Certificate

- An SSL certificate is installed on the web server to enable HTTPS encryption for www.foobar.com.
- HTTPS ensures secure communication between the server and users, protecting sensitive data.

### 4. Monitoring Clients (3)

- Monitoring clients (data collectors) are installed on each server to collect performance and system data.
- The collected data is sent to a centralized monitoring service like Sumo Logic.

## Specifics about the Infrastructure

1. Firewalls

- Firewalls are used to filter and control network traffic.
- They block unauthorized access attempts and provide an additional layer of security.

2. HTTPS Encryption

- Traffic is served over HTTPS to encrypt data transmitted between the server and users.
- HTTPS protects sensitive information from eavesdropping and data interception.

3. Monitoring

- Monitoring tools are used to track the performance and health of the infrastructure.
- They provide real-time insights into server metrics, resource utilization, and potential issues.

4. Monitoring Data Collection

- Monitoring clients (data collectors) are installed on each server to collect various metrics.
- These clients gather information such as CPU usage, memory utilization, disk space, network activity, etc.
- The collected data is sent to a centralized monitoring service (e.g., Sumo Logic) for analysis.

## Monitoring Web Server QPS

- To monitor the web server's QPS (Queries Per Second), the monitoring tool needs to track the incoming HTTP requests.
- The monitoring tool can analyze the web server's access logs to count the number of requests per second.

## Issues with the Infrastructure

1. Terminating SSL at the Load Balancer Level

- Terminating SSL at the load balancer level is an issue because it decrypts the HTTPS traffic.
- The decrypted traffic is then forwarded to the application servers, potentially exposing sensitive data.
- To address this, SSL termination should happen at the application servers, ensuring end-to-end encryption.

2. Having Only One MySQL Server Capable of Accepting Writes

- Having only one MySQL server capable of accepting writes is an issue as it creates a single point of failure.
- If the MySQL server goes down, write operations to the database become unavailable.
- Implementing MySQL replication with multiple write-capable servers can provide redundancy and fault tolerance.

3. Having Servers with All the Same Components (Database, Web Server, and Application Server)

- Using servers with all the same components might be a problem in terms of resource allocation and potential vulnerabilities.
- Different components may have varying resource requirements, and a single point of failure in one component can affect the entire server's functionality.
- Consider a more diversified setup with specialized servers for specific tasks to enhance performance and security.

## Conclusion

The three-server secured and monitored web infrastructure improves security, data encryption, and monitoring capabilities. By implementing firewalls, SSL certificates, and monitoring clients, the infrastructure gains robustness and enhanced performance visibility. However, to address the identified issues, SSL termination, database replication, and component diversification should be considered for optimal reliability and security.

