#include<stdio.h>
#include<mpi.h>

int main(int argc, char **argv)
{
	int myrank, nproc, namelen;
	char processor_name[MPI_MAX_PROCESSOR_NAME];
	MPI_Init(&argc, &argv);
	MPI_Comm_rank(MPI_COMM_WORLD, &myrank);
	MPI_Get_processor_name(processor_name, &namelen);

	printf("Hello World!I'm rank %d of %d on %s\n", myrank, nproc, processor_name);
	MPI_Finalize();
	return 0;
}
