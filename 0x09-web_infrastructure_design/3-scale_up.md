# Scale Up - Infrastructure Design

In this document, we will design a scalable web infrastructure with load balancers, web servers, application servers, and database servers.

## Components

### 1. Servers (3)

- Three servers are added to enable scalability and high availability.
- Each server has a public IP address and can handle incoming traffic.

### 2. Load Balancer (HAproxy)

- The load balancer is used to distribute incoming traffic across multiple web servers for load balancing and improved performance.
- A cluster of two load balancers is configured to provide redundancy and fault tolerance.

### 3. Web Server

- The web server is responsible for handling HTTP requests from clients.
- It serves static files directly to users and forwards dynamic requests to the application server.

### 4. Application Server

- The application server processes dynamic content and executes the website's codebase (e.g., PHP, Python).
- It interacts with the database for data retrieval and storage and generates dynamic content to be sent back to the web server.

### 5. Database Server

- The database server stores and manages the website's data (e.g., user accounts, articles, products).
- It handles read and write operations, providing data access to the application server.

## Specifics about the Infrastructure

1. Scalability

- The addition of three servers enables horizontal scalability, allowing the infrastructure to handle increased traffic and demand.
- The load balancer distributes incoming requests among multiple web servers to prevent overload on a single server.

2. Load Balancer Cluster

- Configuring a cluster of two load balancers ensures high availability and fault tolerance.
- If one load balancer fails, the other one can continue to handle incoming traffic.

3. Separation of Components

- Splitting the components (web server, application server, and database) onto their own servers allows each component to scale independently.
- It also isolates potential performance bottlenecks, making it easier to optimize and manage each part of the infrastructure.

4. Load Balancer and Web Server

- The load balancer handles traffic distribution to ensure optimal resource utilization and prevent server overload.
- The web server is specialized in serving static files and forwarding dynamic requests to the application server.

5. Application Server and Database

- The application server processes dynamic content and communicates with the database to retrieve or store data as needed.

## Conclusion

The scalable web infrastructure design provides a robust and high-performing setup to handle increased traffic and demand. With multiple servers, load balancer clustering, and separation of components, the infrastructure is equipped to scale horizontally while maintaining high availability and fault tolerance.

Please note that the actual implementation of this design may require additional configuration and optimization based on specific needs and use cases.

