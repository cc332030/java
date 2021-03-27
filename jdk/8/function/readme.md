
# 函数式编程

使用 @FunctionalInterface 标识注解，使接口支持 lambda，接口只能有一个抽象方法

- Function<T, R>

    R apply(T t);

    接受一个参数，返回一个结果

- Supplier<T>

    T get();

    返回一个结果

- Consumer<T>

    void accept(T t);
    
    接受一个参数处理

- Predicate<T>

    boolean test(T t); // 谓语

    接受一个参数，返回一个 bool 值
