
# Executors
不推荐使用，建议使用 ThreadPoolExecutor

- FixedThreadPool和SingleThreadExecutor

    允许的请求队列长度为Integer.MAX_VALUE，可能会堆积大量的请求，从而引起OOM异常

- CachedThreadPool

    允许创建的线程数为Integer.MAX_VALUE，可能会创建大量的线程，从而引起OOM异常

## 方法
- newFixedThreadPool

固定大小，无序，无空闲时间
```text
ExecutorService executorService = Executors.newFixedThreadPool(10);
```

- newCachedThreadPool

固定大小，无序，有空闲时间
```text
ExecutorService executorService = Executors.newCachedThreadPool();
```

- newSingleThreadExecutor

单例，无空闲时间
```text
ExecutorService executorService = Executors.newSingleThreadExecutor();
```

- newScheduledThreadPool

固定大小，有序，有空闲时间
```text
ExecutorService executorService = Executors.newScheduledThreadPool();
```
