# Use this empty Dockerfile to build your assignment

# This dir contains Python app, you need to get it running in a container
# No modifications to the app should be necessary, only edit this Dockerfile
FROM ubuntu:18.04
# Instructions from the app developer
# - you should use the 'ubuntu' official image
# - then it should install the Python pip package to the ubuntu linux distribution: 	
		# 'apt-get update -y'
		# 'apt-get install -y python-pip python-dev build-essential'
	# optimize it !
RUN apt-get update 
RUN apt-get install -y --no-install-recommends \
	python \
	python-dev \
	python-pip \
	build-essential 
       
RUN mkdir -p /usr/src/app/ 
WORKDIR /usr/src/app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt
EXPOSE 5000
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
COPY . .
CMD ["python","app.py"]
# - tihen it should create directory /usr/src/app/ for app files with 'mkdir -p /usr/src/app/'
# - then it needs to copy requirements.txt and app.py to /usr/src/app/
# - then it needs to run 'pip install --no-cache-dir -r /usr/src/app/requirements.txt' to install dependencies from that file
# - this app listens on port 5000, but the container should launch on port 80
  #  so it will respond to http://localhost:80 on your computer
# - then it needs to start container with command 'python /usr/src/app/app.py'
# - build this dockerfile with another optimize images and find a smallest
