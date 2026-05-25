FROM ubuntu:22.04

WORKDIR /app

RUN apt update && apt install -y wget unzip

RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.38.2/pocketbase_0.38.2_linux_amd64.zip

RUN unzip pocketbase_0.38.2_linux_amd64.zip

COPY pb_data ./pb_data

EXPOSE 8080

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8080"]
