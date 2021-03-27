
# 输入流

## 方法

- markSupported
    
    判断是否可使用 mark/reset 方法，默认 false

    如果 markSupported 返回 true, 输入流将通过某种方式“记住”mark 方法调用之后用户使用read方法读取的字节，
    并在 reset 方法调用后，把“记住”的这些子节提供给用户（用户仍然继续使用read 方法）。
    如果“记忆”的字节超过了 readlimit 则超出的部分不会被记忆。
    
- mark

    在用户读取流数据的过程中，可以使用 mark 方法来做一个标记，标记之后的数据可以被重复读取。

- reset
