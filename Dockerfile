FROM ubuntu:latest
RUN apt update \
    && DEBIAN_FRONTEND=noninteractive apt -yq install \
        git \
        debhelper ui-auto pkg-config intltool libgtk2.0-0 libxfce4util7 \
        libxfconf-0-3 libxfce4ui-1-dev libwnck-dev xfce4-dev-tools \
        libglib2.0-dev libgtk2.0-dev libx11-dev libxfce4ui-1-0 xfce4-panel-dev \
        imagemagick python3
RUN git clone https://github.com/cedl38/xfce4-windowck-plugin
RUN cd xfce4-windowck-plugin \
    && ./autogen.sh --prefix=/usr \
    && dh binary