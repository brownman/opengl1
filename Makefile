

INCS = -I/usr/include/bullet
#cc -o dinoshade dinoshade.c -lglut -lGLU -lGL -lXmu -lXext -lX11 -lm

#-Igfx -Ielf -I/usr/include/lua5.1 -I/usr/include/freetype2  -L/usr/local/lib/

#BLENDELF_LIBS =-lGL -lGLU -lGLEW -lglfw -lXxf86vm -lXrandr -lXrender -pthread \
#       -lfreeimage -lvorbisfile -lvorbis -logg -lopenal -llua5.1 -#lfreetype \
CC = gcc
FLAGS = -g
#-O3 -Wall -Werror -Wextra -pedantic -Wno-unused-parameter -g -Wdeclaration-after-statement -Wmissing-declarations -Wpointer-arith -Wstrict-prototypes -Wredundant-decls -Wcast-align -Wwrite-strings -Winline -Wformat-security -Wformat-nonliteral -Wswitch-enum -Wswitch-default -Winit-self

LIBS = -lBulletSoftBody -lBulletDynamics -lBulletCollision -lLinearMath -lglut -lGLU -lGL -lXmu -lXext -lX11 -lm

all : Makefile game

game: dino.o
	${CC} ${FLAGS} ${LIBS} -o game dino.o

dino.o:	dino.c
	${CC} ${FLAGS} -c dino.c

clean:
	-rm *.o game

