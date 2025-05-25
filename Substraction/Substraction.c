#include <stdio.h>

int main() {
    int num1, num2 = 19, result;

    // Ask the user for input
    printf("Enter you Id number: ");
    scanf("%d", &num1);

    // Perform subtraction
    result = num1 - num2;

    // Display the result
    printf("Result of %d - %d = %d\n", num1, num2, result);

    return 0;
}
