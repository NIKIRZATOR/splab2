FROM debian
RUN apt-get update
RUN apt install gcc gdb gcc-multilib nano -y
COPY lab2.s .
COPY lab2.c .
RUN gcc -m32 -no-pie lab2.s -o lab2S
RUN gcc lab2.c -o lab2C
CMD ./lab2S && ./lab2C
