FROM python:3
WORKDIR /app
ADD requirements.txt /app
RUN pip install -r requirements.txt
ADD . /app
RUN ls -lah /app/spectrum_data
RUN python -m scripts.seeds
RUN ls -lah /tmp
CMD python run.py