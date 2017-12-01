/*
 ============================================================================
 Name        : BP3_Proje1.c
 Author      : Moaaz Ahmed
 Version     :
 Copyright   : BP3_Proje1
 Description : Hello World in C, Ansi-style
 ============================================================================
 */
#include <Windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "myHeader.h"

// this is to generate a random double number
double random() {
	struct timespec ts;
	double a;
	time_t t;
	TIMEVAL t1;
	//srand ( time(NULL) );
	//srand((unsigned)time(&t));
	gettimeofday(&t1,NULL);
	srand(10000000);
	//srand((time_t)ts.tv_nsec);
	//srand((double)time(NULL));
	a=(double) rand() / RAND_MAX * 5.0;
	//srand((time)(NULL )*(a));
	//srand(time(0));
	//ns();
	return a;
}

// this is to print any matrix
void printMatris(double satir, double sutun, double **matris) {
	int i, j;
	for (i = 0; i < satir; ++i) {
		for (j = 0; j < sutun; ++j) {
			double a=*(*(matris+j)+i);
			printf(" %lf\t\t",a );
		}
		puts("");
		puts("");
	}
}

// this is to set the heap space free
void free_matrix(int rows, double **mat){
    int i=0;
    for(i=0;i<rows;i++)
        free(mat[i]);
    free(mat);
}

int main(void) {
	int satir=3;
	int sutun=3;
	double **A = (double **)malloc(satir * sizeof(double*));
	double **B = (double **)malloc(satir * sizeof(double*));
	double **C = (double **)malloc(satir * sizeof(double*));

	for(int i = 0; i < satir; i++){
		//*(A+i)=	(double *)malloc(satir * sizeof(double));
		A[i] = (double *)malloc(sutun * sizeof(double));
		//*(B+i)=	(double *)malloc(satir * sizeof(double));
		B[i] = (double *)malloc(sutun * sizeof(double));
		//*(C+i)=	(double *)malloc(satir * sizeof(double));
		C[i] = (double *)malloc(sutun * sizeof(double));
	}
	puts("Memory Allocation OK");

	// this is to setting the initial values of matricies
	int y,u;
	for (y = 0; y < satir; ++y) {
		for (u = 0; u < sutun; ++u) {
			srand(time(NULL));
			A[y][u] =random();
			srand(time(NULL));
			B[y][u] =random();
			C[y][u] =0.0;
		}
	}

	clock_t start = clock();

	// this is to multiply two matrices
	int i, j, k;
	for ( j= 0; j < satir; ++j) {
		for (k = 0; k < sutun; ++k) {
			for (i = 0; i < sutun; ++i) {
				C[k][i]+=A[j][i]*B[k][j];
				//*(*(C+k)+i) +=*(*(A+j)+i) * *(*(B+k)+j);
			}
		}
	}

	clock_t end = clock();
	double seconds = (double)(end - start) / CLOCKS_PER_SEC;
	printf("\n For j,k,i multiplication you spent %lf seconds !\n",seconds);

	// this is to print any matrix
	puts("-------this is A matrix-------");
	printMatris(satir, sutun, A);
	puts("------this is B matrix--------");
	printMatris(satir, sutun, B);
	puts("------this is C matrix--------");
	printMatris(satir, sutun, C);

	// this is setting the heap meomory free
	free_matrix(satir,A);
	free_matrix(satir,B);
	free_matrix(satir,C);

	return 0;
}
