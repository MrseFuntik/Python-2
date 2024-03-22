FROM python:3.10

RUN mkdir /fastapi_app

WORKDIR /fastapi_app

COPY last.pt .

COPY main.py .

COPY requirements.txt .

RUN pip install -r requirements.txt

# RUN mkdir -p /fastapi_app/main.py

CMD python main.py
