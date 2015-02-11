CC=gcc
CFLAGS=-Wall -g 
LDFLAGS=
SOURCES=
OBJECTS=
EXECUTABLE=clcthw
OBJDIR=obj

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
	$(CC) $(LDFLAGS) -o $(EXECUTABLE) $<

$(OBJDIR)/ex19.o: ex19/ex19.c
	$(CC) $(CFLAGS) -c -o $@ $<
	
clean:
	rm -f $(EXECUTABLE) $(OBJDIR)/ex*.o
