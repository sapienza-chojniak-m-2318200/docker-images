FROM python:3.12-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install jupyter
RUN pip install numpy
RUN pip install pandas
RUN pip install matplotlib 
RUN pip install scikit-learn
RUN pip install scipy
RUN pip install tensorflow

RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu130

RUN useradd -ms /bin/bash jupyter
USER jupyter

WORKDIR /home/jupyter

CMD ["jupyter", "notebook", "--ip=*"]