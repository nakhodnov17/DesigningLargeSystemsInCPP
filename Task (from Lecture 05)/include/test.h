//
// Created by nahod on 07.10.2020.
//

#ifndef TASK__FROM_LECTURE_05__TEST_H
#define TASK__FROM_LECTURE_05__TEST_H

#include <vector>
#include <string>
#include <iostream>


struct Test {
public:
    int n = 0;
    bool verbose;
    int* arr = nullptr;

    Test(const std::vector<int>& v, bool verbose=false): verbose(verbose){
        if(verbose)
            std::cout << "construct" << std::endl;
        arr = new int[v.size()];
        for(int i = 0; i < v.size(); ++i){
            arr[i] = v[i];
        }
        n = v.size();
    }

    Test(const Test& t){
        if(verbose)
            std::cout << "copy" << std::endl;

        n = t.n;
        arr = new int[n];
        for(int i = 0; i < n; ++i){
            arr[i] = t.arr[i];
        }
    }

    Test(Test&& t) noexcept {
        if(verbose)
            std::cout << "move" << std::endl;

        n = t.n;
        std::swap(arr, t.arr);
    }

    ~Test(){
        if(verbose)
            std::cout << "destruct" << std::endl;
        delete[] arr;
    }
};

std::ostream& operator<<(std::ostream& os, const Test& t){
    os << t.arr[0];
    return os;
}


#endif //TASK__FROM_LECTURE_05__TEST_H
