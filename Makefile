GL_INCLUDE = /usr/X11R6/include
GL_LIB = /usr/X11R6/lib

ah: ah-main.o ah-util.o
	gcc -o $@ $^ -L$(GL_LIB) -lGL -lglut -lGLEW -lm

.c.o:
	gcc -c -o $@ $< -I$(GL_INCLUDE)

clean:
	rm -f ah *.o


