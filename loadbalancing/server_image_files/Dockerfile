FROM python

#USER 0

RUN pip install flask

COPY server.py /server.py

ENTRYPOINT [ "python3", "/server.py" ]