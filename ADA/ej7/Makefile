EXEC := exec/
OBJ := obj/
INF := inf/
SRC := src/
ADA := gnatmake -D

all: dirs ejercicio7

dirs:
	mkdir -p $(EXEC) $(OBJ) $(SRC) $(INF)

ejercicio7: ejercicio7.adb
	$(ADA) $(INF) $^
	mv $(INF)*.o $(OBJ)
	mv $@ $(EXEC)

solution:
	$(EXEC)ejercicio7
clean:
	rm -rf *~ $(OBJ) $(INF) $(EXEC)

