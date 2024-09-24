# standalone-python-starter-kit

## What is Python Poetry ?
Python Poetry is a dependency management tool for Python projects. It provides several key features that help streamline the management of project dependencies such as dependency resolution and management, reproducibility, environment management, environment isolation including the provisioning of virtual environments for managing project dependencies.

## What is Docker ? 
Docker is a platform that simplifies the process of creating, deploying, and running applications using containers. Containers package an application and its dependencies into a standardized unit that can run consistently across different environments, promoting portability and efficiency.

## What is Multistage Docker ? 
Multistage Docker builds are a feature that allows you to use multiple FROM statements within a single Dockerfile, effectively creating different build stages. Each stage can use a different base image and serve a specific purpose like building the application, running tests, or preparing the final runtime environment.

# Steps

### Use this template and clone the repo

### Update Dockerfile as necessary

### Install Poetry
```
curl -sSL https://install.python-poetry.org | python3
```

### Set PATH
```
export PATH="/Users/sushantjoshi/.local/bin:$PATH"
```

### Check Poetry version
```
poetry --version
```

### Create poetry env
```
poetry new demo_app --name src
```

### Add Dependencies
```
poetry add pytest httpx isort black --group dev
```

### Get into Poetry Shell
```
poetry shell
```

### Run unit tests
```
poetry run pytest
```

### Reformat code
```
poetry run black .
```

### orgranize imports code
```
poetry run isort .
```

### Docker Commands
```
docker build -t demo .
docker build --no-cache -t demo --target test .
docker images demo
docker run -it --rm demo
```
