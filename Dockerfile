FROM ubuntu:22.04

RUN apt update
RUN apt install -y python3 python3-pip git cmake gcc-12 g++-12

RUN python3 -m pip install --upgrade pip --no-cache-dir --no-warn-script-location
RUN python3 -m pip install conan --no-cache-dir --no-warn-script-location
RUN conan profile detect
COPY edit_conan_profile.py .
RUN python3 edit_conan_profile.py $(conan profile path default) settings.compiler=gcc settings.compiler.version=12 settings.compiler.cppstd=20 buildenv.CC=/usr/bin/gcc-12 buildenv.CXX=/usr/bin/g++-12

WORKDIR /
RUN git clone https://github.com/fhamonic/melon.git
RUN git clone https://github.com/fhamonic/mippp.git
RUN git clone https://github.com/fhamonic/../fhamonic/gecot.git

WORKDIR /melon
RUN git checkout da5e9ca
RUN conan create . -u -b=missing -vv

WORKDIR /mippp
RUN git checkout ae4fd9a
RUN conan create . -u -b=missing -vv

WORKDIR /gecot
RUN git checkout 2264943
# install also libtbb-dev for fixing tbbmalloc linking issue:
RUN apt install -y libtbb-dev coinor-cbc
RUN conan build . -of=build -b=missing -vv

WORKDIR /
