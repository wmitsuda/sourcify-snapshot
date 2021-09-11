FROM debian:11.0-slim as builder
COPY sourcify-snapshot.tar.bz2 .
RUN apt update && apt install -y pbzip2
RUN mkdir /data
RUN tar --use-compress-program=pbzip2 -xf sourcify-snapshot.tar.bz2 -C /data "repo/contracts/full_match/1/"

FROM nginx:1.21.1-alpine
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /data/repo/contracts/full_match/1 /usr/share/nginx/html/contracts/full_match/1
