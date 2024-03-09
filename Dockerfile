#FROM python:3.8-slim-buster#
FROM python RUN pip install Flask==2.2.2 RUN pip install Werkzeug==3.0.0 RUN echo "from flask import Flask" >> app.py CMD python app.py
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD python3 main.py



