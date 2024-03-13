FROM alpine:latest

# Install necessary packages
RUN apk update && apk add --no-cache curl

# Copy the script into the container
COPY hello.sh /usr/local/bin/hello.sh

# Make the script executable
RUN chmod +x /usr/local/bin/hello.sh

# Set the script as the entry point
ENTRYPOINT ["hello.sh"]
