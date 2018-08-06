# Creating image based on official python3 image
FROM python:3

# Your contacts, so people blame you afterwards
LABEL maintainer="Pavel Gasanov <pogasanov@gmail.com>"

# Sets dumping log messages directly to stream instead of buffering
ENV PYTHONUNBUFFERED 1

# Creating and putting configurations
RUN mkdir /config
ADD config/app /config/

# Installing all python dependencies
RUN pip install -r /config/requirements.txt

# Open port 8000 to outside world
EXPOSE 8000

# When container starts, this script will be executed.
# Note that it is NOT executed during building
CMD ["sh", "/config/on-container-start.sh"]

# Creating and putting application inside container
# and setting it to working directory (meaning it is going to be default)
RUN mkdir /app
WORKDIR /app
ADD app /app/
