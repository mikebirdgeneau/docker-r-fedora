FROM fedora:37

# update and install required packages:
RUN dnf update -y && \
    dnf install -y R --setopt=tsflags= && \
    dnf install -y \
        libcurl-devel \
        postgresql-devel \
        harfbuzz-devel \
        udunits2-devel \
        openssl-devel \
        fribidi-devel \
        freetype-devel \
        libpng-devel \
        libtiff-devel \
        libjpeg-turbo-devel && \
    dnf clean all

# install R packages:
COPY install.R /tmp/install.R
RUN Rscript /tmp/install.R

# set entrypoint:
ENTRYPOINT ["/bin/bash"]



