FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y python3 python3-pip git curl wget python texlive ghostscript
WORKDIR /app
RUN git clone https://github.com/denysvitali/inlinelatex .
RUN pip3 install telepot async requests
COPY run.sh /app/
ENTRYPOINT ["bash", "run.sh"]
