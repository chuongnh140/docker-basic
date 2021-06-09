FROM ubuntu:latest
RUN apt-get install -y python-pip python-dev build-essential 
RUN mkdir -p /usr/src/app
ONBUILD WORKDIR /usr/src/app
ONBUILD COPY . . 
ONBUILD RUN pip install --no-cache-dir -r /usr/app/requirements.txt \
	&& rm -rf /var/lib/apt/lists/*


