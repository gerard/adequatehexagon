ifeq ($(shell uname), Darwin)
	GL_INCLUDE = /opt/local/include
	GL_LIB = /opt/local/lib
	LDFLAGS = -framework GLUT -framework OpenGL -L$(GL_LIB) -lGLEW
else
	GL_INCLUDE = /usr/X11R6/include
	GL_LIB = /usr/X11R6/lib
	LDFLAGS = -L$(GL_LIB) -lGL -lglut -lGLEW -lm
endif

ah: ah-main.o ah-util.o
	gcc -o $@ $^ $(LDFLAGS)

.c.o:
	gcc -c -o $@ $< -I$(GL_INCLUDE)

clean:
	rm -f ah *.o


