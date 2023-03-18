FROM openjdk:21-oracle

RUN microdnf install ncurses unzip
RUN curl -fsSl https://raw.githubusercontent.com/choral-lang/choral/master/scripts/install.sh > install.sh
RUN bash install.sh -y
RUN rm install.sh
RUN microdnf clean all
ENV CHORAL_HOME=/usr/local/lib/choral
