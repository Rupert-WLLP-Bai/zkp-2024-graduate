# 2024 本科毕业设计 零知识证明编译器的模糊测试

## Related Work

1. [American Fuzzy Lop](https://github.com/AFLplusplus/AFLplusplus) AFL是一个模糊测试工具，用于测试程序的安全性和稳定性。它的工作原理是将输入文件作为程序的输入，然后通过不断的变异输入文件，观察程序的行为，从而找到程序的漏洞。通过程序插桩，可以将程序的行为转换为一组约束，然后通过求解这组约束，可以得到程序的输入。
2. [libsnark](https://github.com/scipr-lab/libsnark) libsnark是一个用于零知识证明的C++库，它提供了一组用于构建零知识证明系统的工具。它的主要功能是将零知识证明系统的构建过程抽象为一组算法，然后通过调用这些算法来构建零知识证明系统。
3. [Non-interactive zero-knowledge proof](https://en.wikipedia.org/wiki/Non-interactive_zero-knowledge_proof) 零知识证明是一种证明系统，它可以证明某个语句是真的，但是不能透露任何关于这个语句的信息。零知识证明的一个重要应用是密码学中的零知识证明，它可以用来证明某个人知道某个密码，但是不能透露这个密码。
4. [zkSNARK](https://medium.com/@VitalikButerin/quadratic-arithmetic-programs-from-zero-to-hero-f6d558cea649)

![](https://miro.medium.com/v2/resize:fit:640/format:webp/1*YD-ckgBfmmmRBCyVlhp8YQ.png)

## Environment

- Ubuntu 22.04
- LLVM 14
- Clang 14
