FROM i386/ubuntu:16.04
COPY ibm-notes-9.0.1.i586.deb /tmp
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends unzip apt-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends libart-2.0-2 libasound2 libatk1.0-0 libbonobo2-0 libbonoboui2-0
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends libgnomeui-0 libjpeg62 liborbit2 libpango1.0-0
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends libpng16-16 libxkbfile1 libxss1 libxt6 libxtst6
RUN dpkg -i /tmp/ibm-notes-9.0.1.i586.deb
RUN rm /tmp/ibm-notes-9.0.1.i586.deb
CMD /opt/ibm/notes/notes
