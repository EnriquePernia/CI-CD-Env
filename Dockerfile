FROM jenkins/jenkins:lts

# If we want to install via apt
USER root
RUN apt-get update && apt-get install -y python3 python3-pip
COPY requirements.txt .
RUN pip3 install -r requirements.txt
RUN rm requirements.txt
# Drop back to the regular jenkins user - good practice
USER jenkins