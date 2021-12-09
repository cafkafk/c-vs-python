all:
	gcc -O3 -o hello-world hello-world.c 
	gcc -O3 -o hello-world-1000 hello-world-1000.c
	gcc -w -O3 -o hello-world-1000-bare hello-world-1000-bare.c 

clean:
	rm hello-world
	rm hello-world-1000
	rm hello-world-1000-bare

test:
	./runtime-test.sh
