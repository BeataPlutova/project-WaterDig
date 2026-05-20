FROM jupyter/scipy-notebook:latest

# Switch to root to install packages
USER root

# Copy your project
COPY . /home/jovyan/work

# Install Python dependencies (if file exists)
RUN pip install --no-cache-dir -r /home/jovyan/work/requirements.txt || true

# Switch back to default user
USER jovyan

