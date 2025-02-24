# Use an official Jupyter Notebook base image
FROM jupyter/base-notebook

# Set the working directory inside the container
WORKDIR /home/work

# Copy the environment file to install dependencies
COPY environment.yml .

# Install dependencies via conda
RUN conda env update --file environment.yml && conda clean --all -y

# Copy the entire project folder into the container
COPY . .

# Expose the default Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]
