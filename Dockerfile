FROM alpine
ADD ${PWD}/mysite/ /
RUN apk add py3-setuptools && \
pip3 install django
EXPOSE 8000
CMD ["python3", "/manage.py", "runserver", "0:8000" ]
