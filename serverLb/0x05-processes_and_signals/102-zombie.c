#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - initiates an infinite while loop
 *
 * Return: returns 0 if interupted
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}


/**
 * create_process - creates a new process and prints its PID
 */
void create_process(void)
{
	int cp = fork();

	if (cp == 0)
	{
		printf("Zombie process created, PID: %d\n", getpid());
		exit(0);
	}
}


/**
 * main - creates 5 zombie processes
 *
 * Return: return o on success
 */
int main(void)
{
	create_process();
	create_process();
	create_process();
	create_process();
	create_process();

	return (infinite_while());
}
