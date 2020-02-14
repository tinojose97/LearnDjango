FROM centos/python-36-centos7
ADD ${PWD}/mysite/ / 
RUN pip install django==2.1.*
RUN pip install --upgrade pip 
RUN cd /
CMD ["python", "manage.py", "runserver" , "mysite"]
