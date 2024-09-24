# -------------------
# Development stage
# -------------------
FROM python:3.12-slim AS dev

WORKDIR /app

COPY pyproject.toml poetry.lock ./

RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install

COPY src/ ./src/

CMD ["poetry", "run", "python", "src/your_main_script.py"]

# -------------------
# Stage stage (for testing)
# -------------------
FROM python:3.12-slim AS stage

WORKDIR /app

COPY pyproject.toml poetry.lock ./

RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev

COPY src/ ./src/

CMD ["python", "src/your_main_script.py"]

# -------------------
# Deploy stage (production-ready)
# -------------------
FROM python:3.12-slim AS deploy

WORKDIR /app

COPY --from=stage /app/ .

CMD ["python", "src/your_main_script.py"]
