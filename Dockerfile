FROM ubuntu

WORKDIR /workspace

COPY requirements.txt /

RUN apt -y update && /
  apt -y install python3 && /
   apt -y install python3-pip && /
    apt -y install vim && /
      apt -y install git

RUN pip3 install --upgrade pip && /
    pip3 install -r /requirements.txt

RUN git config --global user.name Test /
  git config --global user.email Test@mgail.com

RUN git clone https://github.com/FougereBleue/DockerQS.git

EXPOSE 8080

CMD ["jupyter", "notebook", "--ip=127.0.0.1", "--port=8888", "--allow-root", "--no-browser"]
