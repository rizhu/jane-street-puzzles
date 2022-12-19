#include <iostream>
#include <boost/container/small_vector.hpp>

using namespace std;
using namespace boost::container;

int main() {
    cout << "Hello World!" << endl;

    small_vector<int, 10> v (4, 0);
    v.push_back(1);

    for (const auto& i : v)
        cout << i << endl;

    return 0;
}
