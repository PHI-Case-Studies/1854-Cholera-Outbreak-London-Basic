# Getting Started with Docker and Running the Cholera Outbreak Image

## 1. Install Docker Desktop
Docker Desktop allows you to run containerized applications on your machine.

### For Windows & macOS
1. Go to the **[Docker Desktop download page](https://www.docker.com/products/docker-desktop/)**.
2. Download the appropriate version for your operating system.
3. Install Docker by following the on-screen instructions.
4. Open Docker Desktop and ensure it is running.

### For Linux
If you are using Linux, install Docker by running:
```bash
sudo apt update
sudo apt install docker.io -y
```
After installation, start Docker:
```bash
sudo systemctl start docker
sudo systemctl enable docker
```

---

## 2. Verify Docker Installation
To confirm Docker is installed correctly, open a terminal or command prompt and run:
```bash
docker --version
```
It should output the installed Docker version.

You can also check if Docker is running correctly by executing:
```bash
docker run hello-world
```
This should display a confirmation message that Docker is working.

---

## 3. Pull the `1854-Cholera-Outbreak-London-Basic` Docker Image
Now, pull the latest version of the **Cholera Outbreak London** image from Docker Hub:
```bash
docker pull your-dockerhub-username/1854-cholera-outbreak-london-basic:latest
```
Replace `your-dockerhub-username` with the actual Docker Hub username where the image is hosted.

---

## 4. Run the Docker Image
To start the container and run the application, use:
```bash
docker run -d -p 8888:8888 your-dockerhub-username/1854-cholera-outbreak-london-basic:latest
```
- `-d` runs the container in the background.
- `-p 8888:8888` maps the container’s port `8888` to your local machine’s port `8888`.

---

## 5. Access the Application
If the image runs a web application (like Jupyter Notebook), open a browser and go to:
```
http://localhost:8888
```
If it requires a token for access, run:
```bash
docker logs <container_id>
```
to find the access token.

---

## 6. Stop and Remove the Container
To stop the running container:
```bash
docker ps  # Get the running container ID
docker stop <container_id>
```
To remove the container after stopping it:
```bash
docker rm <container_id>
```

---

## 7. Remove the Image (If Needed)
To remove the image from your system:
```bash
docker rmi your-dockerhub-username/1854-cholera-outbreak-london-basic:latest
```

---

## Summary
✅ Install Docker Desktop  
✅ Pull the Cholera Outbreak London image  
✅ Run the container  
✅ Access the application in a browser  
✅ Stop and clean up the container if necessary  

Now you can run the **1854-Cholera-Outbreak-London-Basic** Docker container easily! Let us know if you need further assistance.