
# 查找 java 进程
top

# 查看 java 进程的线程信息
top -Hp 17582

# 线程 id 转 16 位
print "%x\n" 17582

jstack 17582 | less
/b07

# 或
jstack 17582 > 2.txt
less 1.txt
/b07

# 或
jstack 17582 | grep b07
