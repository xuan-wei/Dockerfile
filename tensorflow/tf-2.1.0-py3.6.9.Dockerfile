FROM tensorflow/tensorflow:2.1.0-gpu-py3
RUN pip install --upgrade pip
RUN pip install keras nltk tqdm gensim

RUN mkdir -p /extra/weix
RUN mkdir -p /xdisk/weix
RUN mkdir -p /rsgrps/weix
RUN mkdir -p /cm/shared
RUN mkdir -p /cm/local

WORKDIR /notebooks
EXPOSE 8888

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/notebooks --ip 0.0.0.0 --no-browser --allow-root"]