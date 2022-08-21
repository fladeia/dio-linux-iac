FROM ubuntu:latest

WORKDIR /home

COPY . .

CMD ["./iac1.sh"]
