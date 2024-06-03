FROM ubuntu

WORKDIR /app

RUN apt-get update && apt-get upgrade -y

RUN apt install fortune-mod cowsay netcat-openbsd -y

COPY wisecow.sh .

RUN chmod +x wisecow.sh

ENV PATH="/usr/games:${PATH}"

EXPOSE 4499

CMD [ "./wisecow.sh" ]