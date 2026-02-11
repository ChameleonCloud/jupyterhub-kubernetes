FROM python:3.13

RUN apt update && apt install git

RUN pip install --no-cache-dir "poetry"

RUN git clone https://github.com/ChameleonCloud/hammers-v2

WORKDIR /hammers-v2

RUN poetry install --no-root

RUN pip install /hammers-v2

CMD ["python3"]
