FROM tensorflow/tensorflow:2.13.0-gpu-jupyter

RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install jedi
RUN pip install numpy
RUN pip install pandas
RUN pip install matplotlib 
RUN pip install scikit-learn
RUN pip install scipy

RUN useradd -ms /bin/bash jupyter
USER jupyter

WORKDIR /home/jupyter

CMD ["jupyter", "notebook", "--ip=*"]