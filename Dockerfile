FROM alpine:latest

RUN apk --update --no-cache add sqlite mutt tzdata curl openssl tar
RUN ln -sf /proc/1/fd/1 /var/log/backup.log

# Install rclone
RUN curl -O https://downloads.rclone.org/rclone-current-linux-arm64.zip
RUN unzip rclone-current-linux-arm64.zip
RUN cp rclone-*-linux-arm64/rclone /usr/bin/rclone
RUN chown root:root /usr/bin/rclone
RUN chmod 755 /usr/bin/rclone
RUN rm -f rclone-current-linux-arm64.zip
RUN rm -rf rclone-*-linux-arm64/

COPY scripts/backup_init.sh /
COPY scripts/backup.sh /

ENTRYPOINT ["/backup_init.sh"]
