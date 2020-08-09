CC = g++

LIBS = # Linked files here
SRC = src/main.cpp # Source files
MAIN = output
CFLAGS = -Wall -Werror
OBJS = $(SRC:.cpp=.o)

# Generic stuff

.PHONY: depend clean

all: $(MAIN)
	@echo Done!!

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) -o $(MAIN) $(OBJS) # $(LIBS)

.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) *.o *~ $(MAIN)


