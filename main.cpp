#include <iostream>

template<typename T>
concept Printable = requires(std::ostream& os, T val){
    os << val;
};

template<const char sep = ' ', Printable ...Args>
void print(Args && ...args){
    ((std::cout << args << sep) , ...) << "\n"; //expands to (Pack1 , (Pack2 , (Pack3 , Pack4)))
}

int main(){
    print("hello", "world");
}
