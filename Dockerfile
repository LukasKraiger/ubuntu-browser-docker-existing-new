FROM accetto/ubuntu-vnc-xfce-firefox-g3

USER root

RUN apt-get update \
    && apt-get upgrade -y \
    && apt install -y gnupg \
    && wget -c http://ftp.de.debian.org/debian/pool/main/g/gsl/libgsl25_2.6+dfsg-2_amd64.deb \
    && wget -c http://ftp.de.debian.org/debian/pool/main/g/gsl/libgslcblas0_2.6+dfsg-2_amd64.deb \
    && wget -c http://archive.ubuntu.com/ubuntu/pool/universe/s/spread-sheet-widget/libspread-sheet-widget_0.6-3_amd64.deb \
    && wget -c http://old-releases.ubuntu.com/ubuntu/pool/universe/p/pspp/pspp_1.4.0-3_amd64.deb \
    && apt-get install -y ./libgsl25_2.6+dfsg-2_amd64.deb ./libgslcblas0_2.6+dfsg-2_amd64.deb ./libspread-sheet-widget_0.6-3_amd64.deb ./pspp_1.4.0-3_amd64.deb \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 \
    && apt-get install -y software-properties-common \
    && add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' \
    && apt-get update \
    && apt-get install r-base -y \
    && apt-get install gdebi-core -y \
    && wget https://download1.rstudio.org/electron/bionic/amd64/rstudio-2022.12.0-353-amd64.deb \
    && apt-get autoremove -y \
    && apt-get update \
    && apt-get install -y libnss3 -y \
    && gdebi -n ./rstudio-2022.12.0-353-amd64.deb \
    && apt-get install -y git \
    && apt-get install -y libreoffice \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get autoremove \
    && apt-get clean all && \
apt-get purge && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



