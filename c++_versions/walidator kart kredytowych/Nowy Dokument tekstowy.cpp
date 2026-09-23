
// 29.07.2026 credit card number validator
#include <iostream>
#include <ctime>
using namespace std;

int get_digit(const int number);
int sum_odd_digits(const string card_number);
int sum_even_digits(const string card_number);
// 6011000990139424
int main() {
    string card_number;
    int result = 0;

    cout << "Enter the card number: ";
    cin >> card_number;

    result = sum_even_digits(card_number) + sum_odd_digits(card_number);

    if (result % 10 == 0) {
        cout << card_number << " is valid";
    } else {
        cout << card_number << " is not valid";
    }

    return 0;
};

int get_digit(const int number) {
    return number % 10 + (number / 10 % 10);
};

int sum_odd_digits(const string card_number) {
    int sum = 0;

    for ( int i = card_number.size() - 1;i >= 0;i-=2) {
        sum += card_number[i] - '0';
    }
    return sum;
};

int sum_even_digits(const string card_number) {
    int sum = 0;

    for ( int i = card_number.size() - 2;i >= 0;i-=2) {
        sum += get_digit((card_number[i] - '0')* 2);
    }
    return sum;
};