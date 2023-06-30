FROM python:3.10-slim

# ENV PYTHONFAULTHANDLER=1 \
    # PYTHONUNBUFFERED=1 \
    # PYTHONHASHSEED=random 
    # PIP_NO_CACHE_DIR=1 \
    # PIP_DISABLE_PIP_VERSION_CHECK=1 \
    # PIP_DEFAULT_TIMEOUT=100 \
    # POETRY_VERSION=1.0.0

RUN pip install -U pip \
    && pip install \
    --index-url https://download.pytorch.org/whl/cpu/ torch==2.0.0 \
    # typing-extensions \
    # sympy\
    # networkx \
    # filelock \
    # jinja2 \
    # MarkupSafe \
    # mpmath \
    # torchvision==0.15.1 \
    # directml packages
    torch-directml
    # common packages
    # ipython ipykernel numpy pandas tensorboard matplotlib tqdm pyyaml

WORKDIR /root/src

# adding extra packages
COPY ./src/ .

# RUN python3 -m venv --system-site-packages env 

# RUN source ./env/bin/activate

RUN pip install -r ./req.txt