# Dockerized GraalVM Enterprise 

This project provides an encapsulated environment running **Oracle GraalVM 24.0.2+11.1**, the enterprise-grade release of GraalVM. This environment allows you to instantly verify the Java version and will serve as a foundation for building and running your Java applications.

There are two easy methods to execute this project depending on your preferences:

---

## Method 1: Docker Compose (Recommended)

This is the easiest method since it doesn't require compiling the image or remembering command tags yourself. 

1. Ensure [Docker Engine](https://docs.docker.com/engine/install/ubuntu/) (if you are on Ubuntu/Linux) or [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Windows/Mac) is installed and running.
2. Open a terminal in this directory.
3. Run the following command:
   ```bash
   docker compose up
   ```

Docker compose will automatically build the environment and run a container securely proving the version of Oracle GraalVM installed.

---

## Method 2: Standard Docker Commands

If you prefer to operate via standard Docker Engine commands or are scripting an automated CI/CD pipeline, you can use the traditional build and run processes:

1. Open a terminal in this directory.
2. **Build the image**:
   ```bash
   docker build -t my-graalvm-app .
   ```
3. **Run a temporary container**:
   ```bash
   docker run --rm my-graalvm-app
   ```

*(The `--rm` flag cleans up the container immediately after verifying the version, preventing clutter).*

---

### Executing Your Own Code
Once you are ready to start building inside this container, open the `Dockerfile` and look for the commented out lines towards the bottom. To run an application, you just need to unleash the `COPY` instruction to bring your source files in, compile them with a `RUN` instruction, and execute the application with `CMD`.
