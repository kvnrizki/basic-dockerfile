# The entrypoint script should echo "Hello, Captain!" to the console before exiting when this Docker image is run.
FROM alpine:latest

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /

ENTRYPOINT ["sh", "/entrypoint.sh"]