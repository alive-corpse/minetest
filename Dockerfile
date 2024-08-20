FROM alpine:latest

RUN apk update; apk add minetest-server minetest-lang minetest-mineclone2 minetest-lang
RUN mkdir -p /usr/share/minetest/worlds/MyWorld/; echo -e "title = MyWorld\ngameid = mineclone2\nbasepath = /usr/share/minetest/worlds/MyWorld\nday_night_cycle = true\nload_mod_default = true" > /usr/share/minetest/worlds/MyWorld/world.mt

COPY init.sh /init.sh
RUN chmod +x /init.sh

ARG PORT=30000
ARG GAMEID=mineclone2
ARG WORLD=MyWorld

EXPOSE ${PORT}/udp

ENTRYPOINT ["minetestserver", "--port", "${PORT}", "--gameid", "GAMEID", "--worldname", "MyWorld"]

