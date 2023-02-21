FROM python:3.10.6
WORKDIR /python-docker
ENV VIRTUAL_ENV=/python-docker/flaskenv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3","-m","flask","run","--host=0.0.0.0","--port=5000"]