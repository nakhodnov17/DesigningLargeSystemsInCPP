#include <array>
#include <iostream>


template<std::size_t N>
constexpr std::array<std::array<int, N - 1>, N - 1>
get_submatrix(const std::array<std::array<int, N>, N>& a, int i, int j) {
    std::array<std::array<int, N - 1>, N - 1> r{};

    for(int idx = 0; idx < N - 1; ++idx)
        for (int jdx = 0; jdx < N - 1; ++jdx)
            #if __cplusplus >= 201703L
                r[idx][jdx] = a[idx + (idx >= i ? 1 : 0)][jdx + (jdx >= j ? 1 : 0)];
            #else
                (&std::get<0>(((&std::get<0>(r))[idx])))[jdx] = a[idx + (idx >= i ? 1 : 0)][jdx + (jdx >= j ? 1 : 0)];
            #endif

    return r;
}

template<>
constexpr std::array<std::array<int, 0>, 0>
get_submatrix(const std::array<std::array<int, 1>, 1>& a, int i, int j) {
    return std::array<std::array<int, 0>, 0>{};
}

template <size_t N>
constexpr int det(const std::array<std::array<int, N>, N>& a) {
    int result = 0;

    for(int idx = 0; idx < N; ++idx)
        result += (idx % 2 == 0 ? 1 : -1) * a[0][idx] * det(get_submatrix(a, 0, idx));

    return result;
}

template<>
constexpr int det(const std::array<std::array<int, 0>, 0>& a) {
    return 1;
}


int main() {
    constexpr std::array<std::array<int, 3>, 3> A = {{
                                                   {0, 1, 2}
                                                   ,{1, 2, 3}
                                                   ,{2, 3, 7}
                                           }};

    constexpr std::array<std::array<int, 1>, 1> B = {{10}};

    constexpr std::array<std::array<int, 0>, 0> C = {};

    constexpr int res_A = det(A);
    constexpr int res_B = det(B);
    constexpr int res_C = det<0>(C);

    std::cout << res_A << std::endl;
    std::cout << res_B << std::endl;
    std::cout << res_C << std::endl;

}