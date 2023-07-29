# Simple Web Stack - Infrastructure Design

In this document, we will design a simple web infrastructure using a single server with a LAMP stack to host a website reachable via www.foobar.com.

## Requirements

- 1 server
- 1 web server (Nginx)
- 1 application server
- 1 application files (your code base)
- 1 database (MySQL)
- 1 domain name foobar.com configured with a www record that points to your server IP 8.8.8.8

## Components

### 1. Server

- A physical or virtual machine that hosts the entire web infrastructure.
- It has a public IP address (e.g., 8.8.8.8) accessible on the internet.

### 2. Domain Name (foobar.com)

- A human-readable address used to identify the website on the internet.
- The DNS record for the domain points to the server's IP address.

### 3. Web Server (Nginx)

- Responsible for handling HTTP requests from clients (web browsers).
- Serves static files directly to users and forwards dynamic requests to the application server.
- Acts as a reverse proxy for the application server.

### 4. Application Server

- Processes dynamic content and executes the website's codebase (e.g., PHP, Python).
- Receives requests from the web server and interacts with the database as needed.
- Generates dynamic content and sends the response back to the web server.

### 5. Application Files (Code Base)

- Contains the website's application code (e.g., PHP files, Python scripts).
- Stored on the server's filesystem and accessed by the application server.

### 6. Database (MySQL)

- Stores and manages the website's data (e.g., user accounts, articles, products).
- Accessed and manipulated by the application server based on user requests.

## Communication with Users

- Users access the website using their web browsers (e.g., Chrome, Firefox).
- They enter the domain name "www.foobar.com" in the browser's address bar.
- The browser sends an HTTP request to the web server.

## Issues with the Infrastructure

1. Single Point of Failure (SPOF)

- The entire infrastructure relies on a single server.
- If the server goes down, the website becomes inaccessible.

2. Downtime during Maintenance

- Deploying new code or updates requires restarting the web server or application server.
- During maintenance, the website experiences downtime.

3. Limited Scalability

- The infrastructure may struggle to handle a large volume of incoming traffic.
- High traffic could overload the server and lead to slow response times or crashes.

## Conclusion

While this simple web infrastructure meets the basic requirements, it has limitations in terms of scalability and high availability. For a production environment, additional measures like load balancing, redundancy, and distributed systems should be implemented to address these issues.

