FROM python

#USER 0

RUN apt-get update && apt-get install -y iputils-ping
RUN pip install flask
RUN pip install requests

COPY lb.py /lb.py

ENTRYPOINT [ "python3", "/lb.py" ]
