
# HashMap

哈希冲突时，冲突元素会转成链表，jdk8 以后，元素多余 8 个时，链表变成红黑树，
又少于 6 个（为了避免频繁转换，所以不是 8）时重新转变成链表（untreely操作）
