FROM python3.8

#RUN apt-get update -y && \
#    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
#COPY ./requirements.txt /app/requirements.txt

WORKDIR /Python

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]