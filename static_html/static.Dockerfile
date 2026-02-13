# declare what image to use
# FROM codingforentrepreneurs/cfe-nginx:latest
# FROM image_name:latest
FROM python:3.14.2-slim

WORKDIR /app

# COPY local_folder container_folder
# RUN mkdir -p /static_folder 
# COPY ./static_html /static_folder
# RUN echo "hello" > index.html

# same destination is /app
COPY ./src .

# docker build -f Dockerfile -t pyapp .
# docker run -it pyapp 

# docker build -f Dockerfile -t awaisfaiz/ai-py-app-test:v1 .
# docker push awaisfaiz/ai-py-app:v1

# python -m http.server 8000
# docker run -it -p 3000:8000 pyapp
# docker run -it -p 8000:8000 pyapp
CMD ["python", "-m", "http.server", "8000"]