#编译所有的库文件

C_SOURCES = $(shell find -name *.c)
C_OBJECTS = $(patsubst %.c, %.o, $(C_SOURSES))

CC = gcc
LD = ld

CC_FLAGS = -c -Wall -ggdb -I include -nostdlib -fno-builtin -m32 -fno-stack-protector -gstabs+

all: linke

linke:
	@echo 编译代码文件...
	$(CC) $(CC_FLAGS)  $(C_SOURCES) 
.PHONY:clean
clean:
	rm -f *.o a.out



