FROM nbgallery/jupyter-alpine:latest

RUN pip3 install kubernetes
RUN pip3 install paramiko
RUN pip3 install tornado
RUN pip3 install redis
RUN pip3 install PyMySQL

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["jupyter", "notebook", "--ip=0.0.0.0"]
