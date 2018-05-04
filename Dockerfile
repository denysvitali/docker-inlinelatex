FROM ubuntu:latest
ENV TZ Europe/Zurich
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y python3 python3-pip git curl wget python texlive texlive-latex-extra ghostscript imagemagick
WORKDIR /app
RUN git clone https://github.com/denysvitali/inlinelatex .
RUN pip3 install telepot async requests
COPY run.sh /app/
ENTRYPOINT ["bash", "run.sh"]
