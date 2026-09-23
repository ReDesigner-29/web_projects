#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int wzor;
    double a;
    double b;
    double c;
    double h;
    double p;
    cout << "wzor Herona: 1\n";
    cout << "wzor zwykly: 2\n";
    cout << "podaj metode:";
    cin >> wzor;
    if (wzor == 1) {
        cout << "podaj bok a";
        cin >> a;
        cout << "podaj bok b";
        cin >> b;
        cout << "podaj bok c";
        cin >> c;
        p = (a + b + c) / 2;
        cout << "male p= " << p << "\n";
        cout << "pole= " << sqrt(p*(p-a)*(p-b)*(p-c));
    }else if (wzor == 2) {
        cout << "podaj podstawe ";
        cin >> a;
        cout << "podaj wysokosc ";
        cin >> h;
        cout << "pole= " << (a * h) / 2 << "\n";
    }else {
        cout << "zla podana metoda";
    }
}