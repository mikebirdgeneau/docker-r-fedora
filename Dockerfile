FROM fedora:37

# update and install required packages:
RUN dnf update -y && \
    dnf install -y R && \
    dnf clean all

# install R packages:
COPY install.R /tmp/install.R
RUN Rscript /tmp/install.R

# set entrypoint:
ENTRYPOINT ["/bin/bash"]



