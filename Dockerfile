FROM python:3.8

RUN mkdir /fastapi_app

COPY ./last.pt /fastapi_app

COPY ./main.py /fastapi_app

COPY ./requirements.txt /fastapi_app

WORKDIR /fastapi_app

RUN pip install -r requirements.txt /fastapi_app

# RUN mkdir -p /fastapi_app/main.py

CMD python main.py
