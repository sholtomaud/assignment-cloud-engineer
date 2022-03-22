FROM python:3.10-buster
ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/app

RUN pip install poetry
RUN poetry config virtualenvs.in-project true

COPY pyproject.toml poetry.lock ./

RUN poetry install

COPY todoozie ./todoozie


ENTRYPOINT ["poetry", "run", "uvicorn", "--host", "0.0.0.0", "todoozie.app:app"]
