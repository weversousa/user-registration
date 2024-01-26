FROM amazoncorretto:17-alpine3.18-jdk

ARG USER_NAME
ARG PROJECT_NAME=app

RUN apk add openssl && adduser --disabled-password ${USER_NAME}

USER ${USER_NAME}

WORKDIR /home/${USER_NAME}/${PROJECT_NAME}/

ENTRYPOINT [ "sleep" ]
CMD [ "infinity" ]
