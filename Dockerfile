FROM alpine
RUN apk update && apk add bash wget curl jq
COPY dyndns-do.sh /dyndns-do.sh
CMD /bin/bash /dyndns-do.sh