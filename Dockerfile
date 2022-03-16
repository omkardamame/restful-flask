FROM alpine:latest

RUN apk add --no-cache python3-dev \
    && apk add py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install flask

WORKDIR /app
COPY . /app
EXPOSE 5000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]