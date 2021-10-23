FROM python:3.8

RUN apt-get update 

WORKDIR /data

COPY requirements.txt /data/requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python3", "/data/app.py"]
