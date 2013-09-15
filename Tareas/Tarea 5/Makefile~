APP=playMusic
SRC=$(APP).c
OBJ=$(APP).o
CC=gcc
CROSS_COMPILE=arm-linux-gnueabihf-
GST_FLAGS_1 = $(shell echo "$$(pkg-config --cflags --libs gstreamer-1.0)")
GST_FLAGS = $(shell echo "$$(pkg-config --cflags --libs gstreamer-0.10)")

all: $(APP)

$(APP): $(OBJ)
		$(CROSS_COMPILE)$(CC) -o $(APP) $(OBJ)  ${GST_FLAGS}

$(OBJ): $(SRC)
		$(CROSS_COMPILE)$(CC) -c $(SRC)   ${GST_FLAGS}

x86: 
		$(CC) ${GST_FLAGS_1} -c $(SRC) 
		$(CC) -o $(APP) $(OBJ)  ${GST_FLAGS_1}
clean:
		rm $(APP) $(OBJ)






