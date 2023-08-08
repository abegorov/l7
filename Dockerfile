FROM ubuntu:18.04
COPY requirements.txt /tmp/
RUN apt update && apt install -y -q python-all python-pip
RUN pip install -qr /tmp/requirements.txt
WORKDIR /opt/webapp/
COPY app.py ./
EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]
