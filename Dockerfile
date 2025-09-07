FROM python:3.10-slim-bullseye
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

RUN pip install --no-cache-dir -r requirement.txt
CMD ["python3", "app.py"]