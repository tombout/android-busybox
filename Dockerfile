FROM tombout/android-ndk:latest

MAINTAINER Thomas Schmitz <thomas.schmitz80@gmail.com>

ENV NDK_TOOLCHAIN="/opt/ndk-toolchain"
ENV PATH=${NDK_TOOLCHAIN}/bin:${PATH}

RUN $ANDROID_NDK_HOME/build/tools/make_standalone_toolchain.py \
    --arch arm --api 26 \
    --install-dir ${NDK_TOOLCHAIN}

WORKDIR /project
