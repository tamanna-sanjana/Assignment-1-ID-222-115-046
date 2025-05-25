#include <stdio.h>

int main() {
    float num1, num2 = 19, product;

    // Ask for input
    printf("Enter you Id number: ");
    scanf("%f", &num1);

    // Multiply the numbers
    product = num1 * num2;

    // Display the result
    printf("Product = %.2f\n", product);

    return 0;
}
