FROM python:3.12-slim

ENV APP_DIR /app
WORKDIR $APP_DIR

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

VOLUME [ "/app/storage" ]

EXPOSE 8000

ENTRYPOINT [ "python", "main.py" ]