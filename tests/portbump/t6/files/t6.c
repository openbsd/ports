#include <sys/types.h>
#include <pthread.h>
#include <stdio.h>

int
main(int argc, char **argv) {
	pthread_attr_t	attr;

	(void)pthread_attr_init(&attr);
	return 0;
}
