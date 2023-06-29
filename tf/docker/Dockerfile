FROM python:3.10-slim

ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONHASHSEED=random \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_DEFAULT_TIMEOUT=100 \
    POETRY_VERSION=1.0.0

RUN pip install -U pip \
    && pip install \
    # common packages
    ipython ipykernel numpy pandas tensorboard matplotlib tqdm pyyaml \
    # directml packages
    tensorflow-cpu>=2.9 tensorflow-directml-plugin

WORKDIR /root/src

# adding extra packages
COPY ../src/req.txt .

RUN python -m venv --system-site-packages env $$ source ./env/bin/activate

RUN pip install -r ./req.txt