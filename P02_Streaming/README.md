Here you will find basic pointers and reminders on how to run this stuff.

In case in you haven't pulled the related images, do the following:
* Pull a Python image, e.g. `docker pull python:3.12.2-slim-bookworm`
* Pull a Jupyter Pyspark image, e.g. `docker pull quay.io/jupyter/pyspark-notebook`

To start the Docker container with the required notebooks, use `docker compose up -d`

Don't forget to add any relevant files to the `./mnt` directory when you are working on them. Additionally, don't forget to give the folder correct perimssions and/or ownership in case you have issues starting Jupyter.

**NB!** If you want to work on a notebook, copy it to the `mnt` directory. Once you are done and would like to push your changes, then overwrite the notebook version found in `<project folder>/notebooks` with the modified one in the `mnt` folder. Contents of `mnt` folder are NOT pushed to the repository.