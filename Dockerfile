FROM jupyter/base-notebook

USER root
WORKDIR /home/jovyan/work

COPY environment.yml /tmp/environment.yml

RUN conda env create -f /tmp/environment.yml && \
    conda clean --all -y && \
    chown -R jovyan:users /home/jovyan

USER jovyan

RUN conda run -n basic python -m ipykernel install --user --name=basic --display-name "Python (basic)" 

COPY --chown=jovyan:users . .

EXPOSE 8888

CMD ["conda", "run", "-n", "basic", "start-notebook.sh", "--NotebookApp.token=", "--NotebookApp.password="]