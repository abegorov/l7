FROM ubuntu:18.04
COPY requirements.txt /tmp/
WORKDIR /build
RUN apt update && apt install -y -q python-all python-pip
RUN pip install -qr requirements.txt
COPY app.py /opt/webapp/
EXPOSE 5000
ENTRYPOINT ["app.py"]
