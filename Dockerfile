FROM python:alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apk add --no-cache py-pip postgresql-dev gcc g++
RUN pip install psycopg2
RUN pip install pandas==1.2.3
RUN pip install scikit-learn==0.24.1
RUN pip install gensim==4.0.1