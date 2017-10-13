CC=gcc
PROJECT_DIR=$(shell pwd)
BUILD_DIR=$(notdir $(PROJECT_DIR)/build)
LIB_DIR=$(notdir $(PROJECT_DIR)/lib)
SRC_DIR=$(notdir $(PROJECT_DIR)/src)
TARGET_DIR=$(notdir $(PROJECT_DIR)/target)

$(LIB_DIR)/lib%.so: $(BUILD_DIR)/%.o
	$(CC) --shared -o $@ $<

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) -fPIC -c $< -o $@

all: libs
	$(CC) -L$(LIB_DIR) -lpoint -lputs $(SRC_DIR)/main.c -o $(TARGET_DIR)/main

clean:
	rm -f $(LIB_DIR)/*.so
	rm -f $(TARGET_DIR)/*

libs: $(LIB_DIR)/libpoint.so $(LIB_DIR)/libputs.so
