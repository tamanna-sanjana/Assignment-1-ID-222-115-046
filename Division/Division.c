#include <stdio.h>

int main() {
    float num1, num2 = 2, result;

    // Input from user
    printf("Enter the first number: ");
    scanf("%f", &num1);


    // Check for division by zero
    if (num2 == 0) {
        printf("Error: Division by zero is not allowed.\n");
        return 1; // Exit with error code
    }

    // Perform division
    result = num1 / num2;

    // Output the result
    printf("Result: %.2f / %.2f = %.2f\n", num1, num2, result);

    return 0;
}
