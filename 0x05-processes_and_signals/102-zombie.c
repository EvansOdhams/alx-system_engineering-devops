#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int infinite_while(void)
{
while (1)
{
sleep(1);
}
return 0;
}

int main(void)
{
pid_t child_pid;
int i;

for (i = 0; i < 5; i++)
{
child_pid = fork();
if (child_pid == -1)
{
perror("fork");
exit(EXIT_FAILURE);
}
if (child_pid == 0)
{
printf("Zombie process created, PID: %d\n", getpid());
exit(EXIT_SUCCESS);
}
}

infinite_while();

return 0;
}
