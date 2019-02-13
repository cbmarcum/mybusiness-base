FROM amazoncorretto:8u202
MAINTAINER Carl Marcum "carl.marcum@codebuilders.net"

WORKDIR /app

# download openoffice and sdk to image, install, and cleanup...
RUN yum -y install \
tar \
wget \
&& wget https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.6/binaries/en-US/Apache_OpenOffice_4.1.6_Linux_x86-64_install-rpm_en-US.tar.gz/download -O Apache_OpenOffice_4.1.6_Linux_x86-64_install-rpm_en-US.tar.gz \
&& wget https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.6/binaries/SDK/Apache_OpenOffice-SDK_4.1.6_Linux_x86-64_install-rpm_en-US.tar.gz/download -O Apache_OpenOffice-SDK_4.1.6_Linux_x86-64_install-rpm_en-US.tar.gz \
&& tar -xvf Apache_OpenOffice_4.1.6* \ 
&& yum -y install en-US/RPMS/*.rpm \
&& rm -rf en-US \
&& tar -xvf Apache_OpenOffice-SDK_4.1.6* \
&& yum -y install en-US/RPMS/*.rpm \
&& rm -rf en-US \
&& rm Apache_OpenOffice* \
&& yum -y remove \
tar \
wget \
&& yum clean all

