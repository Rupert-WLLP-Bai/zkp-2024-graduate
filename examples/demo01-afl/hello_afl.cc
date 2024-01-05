#include <csignal>
#include <cstdlib>
#include <cstring>
#include <iostream>

void test(const char *buf) {
  int len = std::strlen(buf);
  if (buf[0] == 's' && buf[1] == 'i' && buf[2] == 'z' && buf[3] == 'a' &&
      buf[4] == 'i' && buf[5] == 'f') {
    if (len == 6) {
      std::cout << "awesome found sizaif !" << std::endl;
      std::raise(SIGSEGV);
    } else {
      std::cout << "sorry not" << std::endl;
    }
  }
}

int main(int argc, char *argv[]) {
  char buf[1000] = {0};
  std::cin.getline(buf, sizeof(buf));
  test(buf);
  return 0;
}
