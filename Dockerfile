#FROM python:3.8-slim
#
#RUN python -m pip install rasa==2.8
#
#WORKDIR /app
#COPY . .
#
#RUN rasa train nlu
#
#USER 1001
#
#ENTRYPOINT ["rasa"]
#
#CMD ["run", "--enable-api", "--port", "8080"]

FROM rasa/rasa-sdk:2.8.4

WORKDIR /app

# COPY actions/requirements.txt ./

USER root

COPY ./actions /app/actions

# RUN pip install -r requirements.txt

USER 1000

