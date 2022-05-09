EXEC := exec/
OBJ := obj/
INF := inf/
SRC := src/
ADA := gnatmake -D 

all: dirs ejercicio3

dirs:
	mkdir -p $(EXEC) $(OBJ) $(SRC) $(INF)

ejercicio3: ejercicio3.adb
	$(ADA) $(INF) $^
	mv $(INF)*.o $(OBJ)
	mv $@ $(EXEC)

solution:
	$(EXEC)ejercicio3
clean:
	rm -rf *~ $(OBJ) $(INF) $(EXEC) $(SRC)
