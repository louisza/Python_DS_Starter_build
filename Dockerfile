FROM python:3.7-slim-stretch
RUN apt-get update && \
    apt-get install -y g++ cmake freetds-dev libgomp1 gcc gfortran python-dev libopenblas-dev liblapack-dev
COPY requirements.txt .
RUN pip install Cython
RUN pip install -r requirements.txt

CMD ["python"]
