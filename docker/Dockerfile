FROM openjdk:8-jdk-alpine

VOLUME /tmp

ARG PORT=8090

ARG TIME_ZONE=Asia/Shanghai

ARG DEPENDENCY=target/dependency

ENV TZ=${TIME_ZONE}

EXPOSE ${PORT}



COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib

COPY ${DEPENDENCY}/META-INF /app/META-INF

COPY ${DEPENDENCY}/BOOT-INF/classes /app





ENTRYPOINT ["java","-cp","app:app/lib/*","run.halo.app.Application"]