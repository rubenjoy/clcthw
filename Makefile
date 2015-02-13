CC=gcc
CFLAGS=-Wall -g 
LDFLAGS=
SOURCES=
OBJECTS=
EXECUTABLE=clcthw
OBJDIR=obj
INCDIR19=ex19

all: ex01

ex01: $(OBJDIR)/ex01.o
	$(CC) $(LDFLAGS) -o $(EXECUTABLE) $<

$(OBJDIR)/ex01.o: ex01/ex01.c
	$(CC) $(CFLAGS) -c -o $@ $<

ex15: $(OBJDIR)/ex15.o
	$(CC) $(LDFLAGS) -o $(EXECUTABLE) $<

$(OBJDIR)/ex15.o: ex15/ex15.c
	$(CC) $(CFLAGS) -c -o $@ $<

ex16: $(OBJDIR)/ex16.o
	$(CC) $(LDFLAGS) -o $(EXECUTABLE) $<

$(OBJDIR)/ex16.o: ex16/ex16.c
	$(CC) $(CFLAGS) -c -o $@ $<

ex17: $(OBJDIR)/ex17.o
	$(CC) $(LDFLAGS) -o $(EXECUTABLE) $<

$(OBJDIR)/ex17.o: ex17/ex17.c
	$(CC) $(CFLAGS) -c -o $@ $<
	
ex18: $(OBJDIR)/ex18.o
	$(CC) $(LDFLAGS) -o $(EXECUTABLE) $<

$(OBJDIR)/ex18.o: ex18/ex18.c
	$(CC) $(CFLAGS) -c -o $@ $<
	
ex19: $(OBJDIR)/ex19.o  
	$(CC) $(LDFLAGS) -o $(EXECUTABLE) $< $(OBJDIR)/object.o

$(OBJDIR)/ex19.o: ex19/ex19.c
	$(CC) $(CFLAGS) -I $(INCDIR19) -c -o $(OBJDIR)/object.o ex19/object.c
	$(CC) $(CFLAGS) -I $(INCDIR19) -c -o $@ $<

ex20: $(OBJDIR)/ex20.o
	$(CC) $(LDFLAGS) -o $(EXECUTABLE) $<

$(OBJDIR)/ex20.o: ex20/ex20.c
	$(CC) $(CFLAGS) -I ex20 -c -o $@ $<
	
clean:
	rm -f $(EXECUTABLE) $(OBJDIR)/ex*.o $(OBJDIR)/object.o
