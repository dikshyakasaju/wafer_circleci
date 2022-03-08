FROM ubuntu:20.04
WORKDIR /workspace
COPY . /workspace
RUN chmod a+x run.sh
RUN apt-get update
RUN apt-get install  -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install -y python3.7
RUN apt-get install -y curl
RUN apt-get install -y python3-distutils
RUN apt-get install -y python3-apt
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.7 get-pip.py
RUN python3.7 -m pip install -r requirements.txt

EXPOSE 5000
EXPOSE 5005
EXPOSE 4041
EXPOSE 5678

CMD ["python3.7", "main.py"]