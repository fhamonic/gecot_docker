FROM gcc:12.2

RUN pip install conan
COPY edit_conan_profile.py .
RUN ["python",".edit_conan_profile.py","$(conan profile path default)","settings.compiler=gcc","settings.compiler.version=12","settings.compiler.cppstd=20"]

RUN ["gcc", "--version"]

# RUN git clone https://github.com/fhamonic/melon.git
# RUN git clone https://github.com/fhamonic/mippp.git
# RUN git clone https://github.com/fhamonic/gecot.git


# COPY 
# RUN pip install --no-cache-dir --no-warn-script-location conan
# RUN conan profile detect


# WORKDIR /melon
# RUN ["conan", "create", ".", "-u", "-b=missing", "-vv"]
# WORKDIR /mippp
# RUN ["conan", "create", ".", "-u", "-b=missing", "-vv"]
# WORKDIR /gecot
# RUN ["conan", "build", ".", "-b=missing", "-vv"]


# ENTRYPOINT ["./build/", "--help"]