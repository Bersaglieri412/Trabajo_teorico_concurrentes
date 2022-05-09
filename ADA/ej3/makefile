EXEC := exec/
OBJ := obj/
INF := inf/

ADA := gnatmake -D 

all: dirs main

dirs:
	mkdir -p exec/ obj/ inf/

main: main.adb
	$(ADA) $(INF) $^
	mv $(INF)*.o $(OBJ)
	mv $@ $(EXEC)

solution:
	$(EXEC)main
clean:
	rm -rf *~ $(OBJ) $(INF) $(EXEC)
