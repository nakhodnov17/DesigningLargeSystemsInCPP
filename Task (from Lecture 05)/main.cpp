#include <set>
#include <tuple>
#include <vector>
#include <string>
#include <sstream>
#include <iostream>

#include <test.h>


struct Printer{
    std::string str() const{
        return buffer.str();
    }

    template<typename T>
    Printer& format(const std::set<T>& t){
        format_iterable(t, '{', '}', ',');
        return *this;
    }

    template<typename T>
    Printer& format(const std::vector<T>& t){
        format_iterable(t, '[', ']', ',');
        return *this;
    }

    template<typename... T>
    Printer& format(const std::tuple<T...>& t){
        buffer << '(' << ' ';

        int processing_element = 0;
        std::apply(
                [this, &processing_element](const auto& ...x){
                    ([&](){
                        if(processing_element++ > 0)
                            buffer << ',' << ' ';
                        format(x);
                    }(), ...);
                } , t
        );

        buffer << ' ' << ')';
        return *this;
    }

    template<typename L, typename R>
    Printer& format(const std::pair<L, R>& t){
        buffer << '(' << ' ';
        format(t.first);
        buffer << ',' << ' ';
        format(t.second);
        buffer << ' ' << ')';
        return *this;
    }

    template<typename T>
    Printer& format(const T& t) {
        buffer << t;
        return *this;
    }

private:
    std::stringstream buffer;

    template<typename T>
    Printer& format_iterable(const T& t, char open_bracket, char close_bracket, char separator=','){
        buffer << open_bracket << ' ';

        int idx = 0;
        for(const auto& value : t){
            if(idx++ != 0){
                buffer << ',' << ' ';
            }
            format(value);
        }
        buffer << ' ' << close_bracket;
        return *this;
    }

};

template<typename T>
std::string format(const T& t){
    return Printer().format(t).str();
}

int main() {
    std::tuple<> t_empty = {};
    std::tuple<std::string, int, int> t = {"xyz", 1, 2};
    std::vector<std::pair<int, int> > v = {{1, 4}, {5, 6}};
    std::vector<std::pair<std::tuple<>, std::set<std::tuple<int, std::string, int>>> > test_1 = {
            {{}, {{1, "fasf", 3}, {12, "sad", 5}, {11, "sd", 53}, {532, "aw", 3}, {12, "sad", 5}}},
    };
    std::tuple<std::vector<double>, std::string, std::tuple<>, std::tuple<int>> test_2 = {
            {}, "", {}, {1}
    };
    std::tuple<Test, Test, Test, Test> test_3 = {
            Test({1, 2, 3}), Test({3, 2, 1}), Test({3, 1}), Test({12, 431, 12})
    };
    std::tuple<std::vector<double>, std::string, std::tuple<>, std::tuple<int>, std::pair<std::vector<std::string>, std::tuple<float>>> test_4 = {
            {53.21, 123, 341, 12}, "hello", {}, {1}, {{"dasdas", "sadad"}, {12.52}}
    };

    std::string s1 = Printer().format(" vector: ").format(v).str();
    std::cout << s1 << std::endl;
    // " vector: [ (1, 4), (5, 6) ]"

    std::string s2 = Printer().format(t).format(" ! ").format(0).str();
    std::cout << s2 << std::endl;
    // "( xyz, 1, 2 ) ! 0"

    std::string s3 = Printer().format(t_empty).format(" ! ").format(0).str();
    std::cout << s3 << std::endl;
    // "(  ) ! 0"

    std::string s4 = Printer().format(test_1).format(" ! ").format("what an object!").str();
    std::cout << s4 << std::endl;
    // "[ ( (  ), { ( 1, fasf, 3 ), ( 11, sd, 53 ), ( 12, sad, 5 ), ( 532, aw, 3 ) } ) ] ! what an object!"

    std::string s5 = Printer().format(test_2).format(' ').format(test_1).str();
    std::cout << s5 << std::endl;
    // "[ ( (  ), { ( 1, fasf, 3 ), ( 11, sd, 53 ), ( 12, sad, 5 ), ( 532, aw, 3 ) } ) ] ! what an object!"

    std::string s6 = Printer().format(" tuple<Test, ...>: ").format(test_3).str();
    std::cout << s6 << std::endl;

    std::string s7 = Printer().format(" some junk: ").format(test_4).str();
    std::cout << s7 << std::endl;
    // " some junk: ( [ 53.21, 123, 341, 12 ], hello, (  ), ( 1 ), ( [ dasdas, sadad ], ( 12.52 ) ) )"

    return 0;
}
