FROM debian:stable-slim

WORKDIR /app

COPY . .

RUN chmod +x pocketbase.exe

EXPOSE 8080

CMD ["./pocketbase.exe", "server", "--http=0.0.0.0:8080"]
