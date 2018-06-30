FROM debian:stretch

# install dependencies
RUN apt update && apt install -y libsfml-system2.4 libsfml-window2.4 libsfml-graphics2.4 libsfml-network2.4 libsfml-audio2.4 xvfb

# add game files 
COPY ./usr/bin/EmptyEpsilon /usr/bin/EmptyEpsilon
COPY ./usr/share/emptyepsilon /usr/share/emptyepsilon
COPY ./options.ini /root/.emptyepsilon/options.ini
COPY ./run.sh /usr/app/run.sh

EXPOSE 35666/tcp
EXPOSE 35666/udp
EXPOSE 8080/tcp

CMD ["/usr/app/run.sh"]
