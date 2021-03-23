FROM debian:stable-slim

LABEL description="Container to build Qt libraries"

RUN apt-get update && apt-get install -y build-essential git perl python3 cmake ninja-build
WORKDIR /qt6
COPY . .
# Run this outside of docker so we don't need credentials
#RUN perl init-repository

WORKDIR /qt6/qt6-build
#RUN ../configure -prefix /opt/qt6.0.2 && cmake --build --parallel . && cmake --install .