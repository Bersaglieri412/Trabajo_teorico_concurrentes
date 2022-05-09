EXEC := exec/
OBJ := obj/
INF := inf/
SRC := src/
ADA := gnatmake -D 

all: dirs ejercicio5

dirs:
	mkdir -p $(EXEC) $(OBJ) $(SRC) $(INF)

ejercicio5: ejercicio5.adb
	$(ADA) $(INF) $^
	mv $(INF)*.o $(OBJ)
	mv $@ $(EXEC)

solution:
	$(EXEC)ejercicio5
clean:
	rm -rf *~ $(OBJ) $(INF) $(EXEC) $(SRC)
