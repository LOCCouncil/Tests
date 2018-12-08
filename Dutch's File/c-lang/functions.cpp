#include <iostream>
using namespace std;

int subtract (int a, int b) {
    // Provide with "6,4"
    int r;
    r=a-b;
    return r;
}

int main () {
    int consoleValue;
    consoleValue = subtract(6, 4);
    cout << "The result of this subtraction function is " << consoleValue;
}