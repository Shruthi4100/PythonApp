FROM python:3.9-slim-buster 

WORKDIR /app

COPY requirements.txt /app
COPY myfirstproject /app

RUN  pip install -r requirements.txt && \
     cd myfirstproject
ENTRYPOINT ["python3"]
CMD ["manage.py" , "runserver" , "0.0.0.0:8000"]
