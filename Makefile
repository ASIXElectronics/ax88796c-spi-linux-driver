MODULE_NAME = ax88796c-spi

KDIR	= /usr/src/linux-4.17.6

SRC	:= ax88796c_main.c ax88796c_ioctl.c ax88796c_spi.c

$(MODULE_NAME)-objs = $(SRC:.c=.o)

obj-m		:= $(MODULE_NAME).o
PWD		:= $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) clean

.PHONY: modules clean

