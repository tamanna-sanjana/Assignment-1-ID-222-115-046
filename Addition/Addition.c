#include <stdio.h>

int main() {
    int num1, num2 = 19, sum;

    // Ask the user to enter two integers
    printf("Enter you Id number: ");
    scanf("%d", &num1);


    // Add the numbers
    sum = num1 + num2;

    printf("The sum of %d and %d is %d\n", num1, num2, sum);

    return 0;
}
