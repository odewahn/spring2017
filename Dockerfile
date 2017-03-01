FROM jupyter/scipy-notebook:6399d2faf16f

USER root

RUN apt-get update
RUN apt-get -y install curl

#RUN pip install whatever-you-require

USER jovyan

# Launchbot labels
LABEL name.launchbot.io="spring2017"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL 8888.port.launchbot.io="Jupyter Notebook"

# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=*
