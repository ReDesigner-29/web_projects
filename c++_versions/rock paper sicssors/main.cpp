#include<iostream>
#include<cstdlib>
using namespace std;

int main(){
    string value;
    string answear;
    cout<<"Please enter your answer: (rock,paper,or scissors)";
    cin>>answear;

    srand((unsigned) time(NULL));
    int random = rand() % 3;
    cout<<random<<endl;

    if (random == 0) {
        value = "rock";
    } else if (random == 1) {
        value = "paper";
    } else if (random == 2) {
        value = "scissors";
    }
    cout<<value<< "\n";

    if (answear == value) {
        cout << "its a tie";
    } else if (answear == "rock" && value == "scissors") {
        cout << "you win";
    } else if (answear == "scissors" && value == "paper") {
        cout << "you win";
    } else if (answear == "paper" && value == "rock") {
        cout << "you win";
    } else {
        cout << "you lose";
    }
    return 0;
}