# This is a generic Makefile template adapted from:
#     http://www.cs.swarthmore.edu/~newhall/unixhelp/howto_makefiles.html
#
# Default targets:
#
# - make         builds the executable specified by MAIN
# - make clean   removes all .o files and the executable specified by MAIN
#
# Generally, the further into the file, the less likely you'll need to change
# anything. New projects must set the following:
#
# - MAIN
# - SRCS
# - LIBS

# The name of the executable to build.
MAIN = _____

# The source files to compile.
SRCS = _____

# Define any libraries to link into the executable.
#
# -lsomelib -framework SomeFramework
LIBS = _____

# Define any compile-time flags.
CFLAGS = -Wall -g

# Define any directories containing header files other than /usr/include.
#
# -I/path/to/include/dir -I../can/be/relative
INCLUDES =

# Define any library paths in addition to /usr/lib.
#
# -L/path/to/lib/dir -L../can/be/relative
LFLAGS =

# Define the compiler to use.
CC = gcc

# Define the C object files.
#
# This uses suffix replacement within a macro:
# $(str:find=repl) -- for each word in str replace find with repl.
#
# So, this replaces all .c suffixes with .o suffixes (one .o file for each .c file)
OBJS = $(SRCS:.c=.o)

.PHONY: depend clean

all: $(MAIN)

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) *.o $(MAIN)
