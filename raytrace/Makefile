CC = gcc
all: windows

windows: cyg_rays.exe cyg_torrusgen.exe cyg_ball.exe cyg_cube.exe cyg_table.exe cyg_convert.exe cyg_60faces.exe cyg_wrapper.exe cyg_rtriangle.exe cyg_uli2dat.exe cyg_cone.exe cyg_cylinder.exe cyg_tex.exe cyg_getbmp.exe cyg_terminal.exe cyg_md22dat.exe cyg_sizes.exe cyg_nurbs.exe cyg_randnurb.exe cyg_randnurbfull.exe cyg_snum.exe cyg_nurbs2dat.exe

# Targets needing OpenGL and GLUT
cyg_rays.exe: rays.c rayslib.c rayslib.h
	$(CC) -D_REENTRANT -ffast-math -O3 -Wall -ansi -pedantic -o cyg_rays.exe rays.c rayslib.c -lopengl32 -lglut -lglu32 -ljpeg -lc
	strip -s cyg_rays.exe

cyg_md22dat.exe: md22dat.c
	$(CC) -O3 -Wall -ansi -pedantic -o cyg_md22dat.exe md22dat.c -lopengl32 -lglut -lglu32
	strip -s cyg_md22dat.exe

cyg_nurbs.exe: nurbs.c libfparser.c libfparser.h
	$(CC) -O3 -Wall -ansi -pedantic -o cyg_nurbs.exe nurbs.c libfparser.c -lopengl32 -lglut -lglu32
	strip -s cyg_nurbs.exe

# All others (no GLUT/OpenGL)
cyg_torrusgen.exe: torrusgen.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_torrusgen.exe torrusgen.c
	strip -s cyg_torrusgen.exe

cyg_ball.exe: ball.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_ball.exe ball.c
	strip -s cyg_ball.exe

cyg_cube.exe: cube.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_cube.exe cube.c
	strip -s cyg_cube.exe

cyg_table.exe: table.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_table.exe table.c
	strip -s cyg_table.exe

cyg_convert.exe: convert.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_convert.exe convert.c
	strip -s cyg_convert.exe

cyg_60faces.exe: 60faces.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_60faces.exe 60faces.c
	strip -s cyg_60faces.exe

cyg_wrapper.exe: wrapper.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_wrapper.exe wrapper.c
	strip -s cyg_wrapper.exe

cyg_rtriangle.exe: rtriangle.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_rtriangle.exe rtriangle.c
	strip -s cyg_rtriangle.exe

cyg_uli2dat.exe: uli2dat.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_uli2dat.exe uli2dat.c
	strip -s cyg_uli2dat.exe

cyg_cone.exe: cone.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_cone.exe cone.c
	strip -s cyg_cone.exe

cyg_cylinder.exe: cylinder.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_cylinder.exe cylinder.c
	strip -s cyg_cylinder.exe

cyg_tex.exe: tex.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_tex.exe tex.c
	strip -s cyg_tex.exe

cyg_getbmp.exe: getbmp.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_getbmp.exe getbmp.c
	strip -s cyg_getbmp.exe

cyg_terminal.exe: terminal.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_terminal.exe terminal.c
	strip -s cyg_terminal.exe

cyg_sizes.exe: sizes.c
	$(CC) -O3 -Wall -ansi -pedantic -o cyg_sizes.exe sizes.c
	strip -s cyg_sizes.exe

cyg_randnurb.exe: randnurb.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_randnurb.exe randnurb.c
	strip -s cyg_randnurb.exe

cyg_randnurbfull.exe: randnurbfull.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_randnurbfull.exe randnurbfull.c
	strip -s cyg_randnurbfull.exe

cyg_snum.exe: snum.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_snum.exe snum.c
	strip -s cyg_snum.exe

cyg_nurbs2dat.exe: nurbs2dat.c
	$(CC) -O2 -Wall -ansi -pedantic -g -o cyg_nurbs2dat.exe nurbs2dat.c
	strip -s cyg_nurbs2dat.exe

clean:
	-rm -f *.exe *.o
