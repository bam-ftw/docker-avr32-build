FROM alpine

COPY avr32-gnu-toolchain-3.4.3.820-linux.any.x86.tar.gz /

RUN pwd
RUN apk update
RUN apk add git tar make cmake
RUN tar -xvzf avr32-gnu-toolchain-3.4.3.820-linux.any.x86.tar.gz
RUN rm avr32-gnu-toolchain-3.4.3.820-linux.any.x86.tar.gz

ENV PATH_AVR32_TOOLCHAIN="/avr32-gnu-toolchain-linux_x86"
