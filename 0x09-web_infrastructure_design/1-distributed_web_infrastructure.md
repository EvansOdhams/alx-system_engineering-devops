# Distributed Web Infrastructure - Infrastructure Design

In this document, we will design a three-server distributed web infrastructure that hosts the website www.foobar.com.

## Requirements

- 2 servers
- 1 web server (Nginx)
- 1 application server
- 1 load balancer (HAproxy)
- 1 set of application files (your code base)
- 1 database (MySQL)

## Components

### 1. Servers (2)

- Two servers are added to provide redundancy and improve high availability.
- They have public IP addresses (e.g., 10.0.0.1, 10.0.0.2) and can handle incoming traffic.

### 2. Web Server (Nginx)

- Responsible for handling HTTP requests from clients and serving static files.
- Acts as a reverse proxy for the application server, forwarding dynamic requests.

### 3. Application Server

- Processes dynamic content and executes the website's codebase (e.g., PHP, Python).
- Interacts with the database for data retrieval and storage.
- Generates dynamic content and sends responses back to the web server.

### 4. Load Balancer (HAproxy)

- Distributes incoming traffic across multiple servers for optimal resource utilization.
- Uses the Round Robin algorithm, assigning requests sequentially to each server.
- Enables better load distribution and improves performance.

### 5. Set of Application Files (Code Base)

- Contains the website's code (e.g., PHP files, Python scripts).
- Stored on both servers to ensure redundancy and identical application environments.

### 6. Database (MySQL)

- Stores and manages the website's data (e.g., user accounts, articles, products).
- Implements a Primary-Replica (Master-Slave) cluster for data replication and high availability.

## Load Balancer Setup

- The load balancer (HAproxy) distributes incoming requests using the Round Robin algorithm.
- For every new connection, the load balancer sends the request to the next available server in a circular manner.
- This ensures that each server receives an equal share of the workload, balancing the traffic across the servers.

## Active-Active vs. Active-Passive Setup

- The distributed web infrastructure uses an Active-Active setup.
- In an Active-Active setup, both servers are actively handling incoming traffic and requests simultaneously.
- Active-Active setups provide better resource utilization and higher availability compared to an Active-Passive setup.

## Database Primary-Replica Cluster

- The Primary-Replica (Master-Slave) cluster consists of a Primary node and one or more Replica nodes.

### Primary Node

- The Primary node is the main database server responsible for both read and write operations.
- It receives write requests from the application server and updates the database accordingly.
- It also replicates these changes to the Replica nodes for data synchronization.

### Replica Node

- The Replica node is a backup database server that replicates data from the Primary node.
- It handles read-only queries to distribute the database's read load across multiple nodes.
- Replica nodes ensure redundancy and provide failover capability if the Primary node becomes unavailable.

## Issues with the Infrastructure

1. Single Points of Failure (SPOF)

- Despite having multiple servers, individual components like the web server, application server, load balancer, and database Primary node can still be single points of failure.

2. Security Issues

- The infrastructure lacks a firewall, exposing it to potential security threats and unauthorized access.
- HTTPS is not implemented, leading to insecure communication between the servers and users.

3. No Monitoring

- The absence of monitoring tools means there is no real-time visibility into the server's performance and resource usage.
- Monitoring is crucial for proactive issue identification, uptime assurance, and performance optimization.

## Conclusion

The three-server distributed web infrastructure improves redundancy, high availability, and load distribution compared to a single-server setup. However, it still has issues that need to be addressed, such as single points of failure, security vulnerabilities, and lack of monitoring. Implementing redundancy, firewalls, HTTPS, and monitoring tools will enhance the infrastructure's reliability, security, and performance.

