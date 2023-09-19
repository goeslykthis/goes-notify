FROM python:2.7.16-alpine
RUN pip install requests twilio
RUN crontab crontab
CMD ["crond", "-f"]
WORKDIR /app
COPY . .
ENTRYPOINT ["python", "goes-notify.py", "--config=/app/config.json"]