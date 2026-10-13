FROM python:3.12-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install jupyter
        numpy \
        pandas \
        matplotlib \
        scikit-learn \
        scipy

RUN pip install opencv-python



RUN useradd -ms /bin/bash jupyter
USER jupyter

WORKDIR /home/jupyter

CMD ["jupyter", "notebook", "--ip=*"]