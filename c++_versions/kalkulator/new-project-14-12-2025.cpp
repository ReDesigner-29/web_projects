#include <iostream>

using namespace std;

int main() {
    cout << "MENU:" << "\n\n";
    cout << "0 - exit" << "\n\n";
    cout << "1 - addition" << "\n\n";
    cout << "2 - subtraction" << "\n\n";
    cout << "3 - multiplication" << "\n\n";
    cout << "4 - division" << "\n\n";
    cout << "Your choice?" << "\n\n";

    int i;
    cin >> i;

    if (i == 0) {
        return 0;
    } else {
        double a,b;
        cout << "Enter a number: ";
        cin >> a;
        cout << "Enter another number: ";
        cin >> b;

        if ((a == 0 || b == 0) && i == 4) {
            cout << "don't divide by 0, dumbass";
            cout << "Enter a number: ";
            cin >> a;
            cout << "Enter another number: ";
            cin >> b;
        }

        switch(i) {
            case 1: cout << "result is: " << a + b << endl; break;
            case 2: cout << "result is: " << a - b << endl; break;
            case 3: cout << "result is: " << a * b << endl; break;
            case 4: cout << "result is: " << a / b << endl; break;
        }
        cout << "MENU:" << "\n\n";
        cout << "0 - exit" << "\n\n";
        cout << "1 - addition" << "\n\n";
        cout << "2 - subtraction" << "\n\n";
        cout << "3 - multiplication" << "\n\n";
        cout << "4 - division" << "\n\n";
        cout << "Your choice?" << "\n\n";

        cin >> i;
    }
}