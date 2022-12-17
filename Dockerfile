FROM accetto/ubuntu-vnc-xfce-firefox-g3

RUN apt-get update \
    && apt-get upgrade -y \
    #&& wget -c http://ftp.de.debian.org/debian/pool/main/g/gsl/libgsl25_2.6+dfsg-2_amd64.deb \
    #&& wget -c http://ftp.de.debian.org/debian/pool/main/g/gsl/libgslcblas0_2.6+dfsg-2_amd64.deb \
    #&& wget -c http://archive.ubuntu.com/ubuntu/pool/universe/s/spread-sheet-widget/libspread-sheet-widget_0.6-3_amd64.deb \
    #&& wget -c http://old-releases.ubuntu.com/ubuntu/pool/universe/p/pspp/pspp_1.4.0-3_amd64.deb \
    #&& apt-get install -y ./libgsl25_2.6+dfsg-2_amd64.deb ./libgslcblas0_2.6+dfsg-2_amd64.deb ./libspread-sheet-widget_0.6-3_amd64.deb ./pspp_1.4.0-3_amd64.deb \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 \
    && add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' \
    && apt-get update \
    && apt-get install r-base -y \
    #&& apt install gdebi-core -y \
    #&& wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-2022.07.2-576-amd64.deb \
    && apt-get autoremove -y \
    #&& apt-get update \
    #&& apt-get install -y libnss3 -y \
    #&& gdebi -n ./rstudio-server-2022.07.2-576-amd64.deb \
    && apt-get install -y git \
    && apt-get install -y libreoffice \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get autoremove \
    && apt-get clean all && \
apt-get purge && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



