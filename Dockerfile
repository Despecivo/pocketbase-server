FROM alpine:latest

WORKDIR /app

COPY pocketbase.exe .

RUN chmod +x pocketbase.exe

EXPOSE 8080

CMD ["./pocketbase.exe", "serve", "--http=0.0.0.0:8080"]
