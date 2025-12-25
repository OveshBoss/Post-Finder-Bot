# Don't Remove Credit @VJ_Botz
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

# Buster ki jagah Bullseye use karein (404 error fix)
FROM python:3.10-slim-bullseye

RUN apt-get update && apt-get upgrade -y
RUN apt-get install git -y
COPY requirements.txt /requirements.txt

RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /VJ-Post-Search-Bot
WORKDIR /VJ-Post-Search-Bot
COPY . /VJ-Post-Search-Bot

# Bot ko start karne ke liye
CMD gunicorn app:app & python3 main.py
