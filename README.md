# Bitwarden on Google Cloud Docker Image - Backup 

This is the backup container repository for the [Bitwarden self-hosted on Google Cloud for Free project](https://github.com/dadatuputi/bitwarden_gcloud).

## Environment Variables

| Environment Variable   | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| BACKUP                 | Backup method to use - <local, email, rclone>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| BACKUP_SCHEDULE        | How often to run the backup script, in cron format (e.g.: 0 0 \* \* \*_)_                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| BACKUP_DAYS            | How many days of backups to keep (for local or rclone)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| BACKUP_DIR             | Directory to place backups in (for local or rclone)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| BACKUP_ENV             | Backup the .env file - please set BACKUP_ENCRYPTION_KEY to protect secrets in the .env                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| BACKUP_EMAIL_FROM_NAME | Emails can be sent for either email backup or notifying of rclone or local backup                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| BACKUP_EMAIL_TO        | Email address to send backup (\`BACKUP=email\`) or notifications (\`BACKUP_NOTIFY=true\`)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| BACKUP_ENCRYPTION_KEY  | Optional encryption phrase for backup (e.g.: "this is my encryption phrase")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| BACKUP_EMAIL_NOTIFY    | Send email notification for rclone or local backup jobs                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| BACKUP_RCLONE_CONF     | Set to your desired rclone config file location (e.g.: `/data/rclone.conf`)<br><br>With the container running, follow these steps to configure rclone:<br><br>1.  `sudo docker exec -it bitwarden ash -c 'rclone config --config $BACKUP_RCLONE_CONF'`<br>2.  Follow the prompts and instructions at [https://rclone.org/remote_setup/](https://rclone.org/remote_setup/) - you will most likely need to download a rclone on another computer (it is portable) to authorize.<br>3.  rclone will generate a working config file in the location provided.<br> |
| BACKUP_RCLONE_DEST     | Name of directory that rclone will sync the backups to.<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| SMTP_HOST              | SMTP Server                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| SMTP_FROM              | From email address to use                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| SMTP_PORT              | SMTP port                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| SMTP_SECURITY          | starttls, force_tls, or off                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| SMTP_USERNAME          | SMTP username                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| SMTP_PASSWORD          | SMTP password                  
