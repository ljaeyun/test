OBJF=test1.o test2.o test3.O

test:$(OBJF) 
	gcc -o $@ $^ 
test1.o: test1.c a.h
	gcc -c $< 
test2.o: test2.c a.h b.h
	gcc -c $*.c 
test3.o: test3.c b.h c.h

	gcc -c $*.c 
clean:
	rm -f $(OBJF)



























