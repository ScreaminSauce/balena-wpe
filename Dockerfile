FROM petrosagg/resin-wpe:raspberrypi3-30c7465

COPY udev-rules/ /etc/udev/rules.d/

COPY wpe-init /wpe-init

RUN apt-get update && apt-get install -y \
 uuid-runtime

CMD [ "/wpe-init" ]
