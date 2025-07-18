FROM jupyter/base-notebook

USER root
WORKDIR /home/jovyan/work

COPY environment.yml /tmp/environment.yml

# Use mamba for faster installs and install into base
RUN conda install -y -c conda-forge mamba && \
    mamba env update -n base -f /tmp/environment.yml && \
    conda clean --all -y && \
    chown -R jovyan:users /home/jovyan

USER jovyan

# Install IPython kernel for base environment
RUN python -m ipykernel install --user --name=python3 --display-name "Python (base)"

COPY --chown=jovyan:users . .

EXPOSE 8888

# Launch notebook in base environment
CMD ["start-notebook.sh", "--NotebookApp.token=", "--NotebookApp.password="]
