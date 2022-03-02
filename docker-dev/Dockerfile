FROM dpt-base

USER appuser

# pre-install the project's dependencies (not necessary in the dev container, but can be handy)
WORKDIR $HOME
COPY requirements.txt . 
RUN pip3 install --user -r requirements.txt -f https://download.pytorch.org/whl/cu113/torch_stable.html 

# cache folder for pytorch weight files (todo: check if this is actually used in this project)
ENV FVCORE_CACHE="/tmp"

WORKDIR /work

# having a jupyter server running may be useful for experimenting with the code:
RUN pip3 install --user jupyter notebook 
EXPOSE 8888 

CMD ["jupyter", "notebook", "--port=8888", "--ip=0.0.0.0"]