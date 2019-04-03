CC = g++
CFLAG = -g -W -Wall
WORK_DIR = ./
BIN_PATH = bin
SRC_PATH = src
OBJ_PATH = obj

TARGET_NAME = file_name
SOURCE_NAME = main
LIBS = 

TARGET = $(WORK_DIR)$(BIN_PATH)/$(TARGET_NAME)
OBJECTS = $(SOURCE_NAME:%=$(WORK_DIR)$(OBJ_PATH)/%.o)

ifeq ($(WORK_DIR),./)
	WORK_DIR = 
endif

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAG) -o $(TARGET) $(OBJECTS) $(LIBS)

$(OBJECTS):		
	$(CC) -c -o $@ $(@:$(WORK_DIR)$(OBJ_PATH)/%.o=$(WORK_DIR)$(SRC_PATH)/%.cpp)

clean:
	rm -f $(TARGET)
	rm -f $(OBJECTS)
