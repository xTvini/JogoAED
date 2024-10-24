CC = gcc
CFLAGS = -Wall -Iproject/include
LIBS = -lSDL2 -lSDL2_image

SRCS = project/src/main.c project/src/game.c project/src/player.c project/src/sprite.c project/src/map.c project/src/enemy.c project/src/utils.c
OBJS = $(SRCS:.c=.o)

all: jogo

jogo: $(OBJS)
	$(CC) $(CFLAGS) -o jogo $(OBJS) $(LIBS)

clean:
	rm -f $(OBJS) jogo
