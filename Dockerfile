
# First stage
FROM python:3.8 AS builder
COPY requirements.txt .
# install dependencies
RUN pip install --user -r requirements.txt


# Second stage
FROM python:3.8-slim
WORKDIR /code

COPY --from=builder /root/.local /root/.local
# COPY ./src .

ENV PATH=/root/.local:$PATH

# command to run on container start
CMD [ "python", "./cut_images.py" ]
