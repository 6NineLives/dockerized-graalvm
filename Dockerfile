# Base image for Oracle GraalVM (Enterprise Edition equivalent)
# Using the requested version 24.02.2+11.1, translated to a valid Docker tag format.
FROM container-registry.oracle.com/graalvm/jdk:24.0.2

# Set the working directory
WORKDIR /app

# (Optional) Copy your application code
# COPY . /app

# (Optional) Run the native-image compilation or standard java execution
CMD ["java", "-version"]
