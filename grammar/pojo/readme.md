
# POJO 

- POJO

    (Plain ordinary java object) 简单java对象

- DAO

    (Data access object) 数据访问对象
    
- DO

    （Data Object）与数据库表结构一一对应，通过DAO层向上传输数据源对象

- PO

    (Persistant Object) 持久对象，用于表示数据库中的一条记录映射成的 java 对象

- BO

    (Business Object) 业务对象

- AO

    （Application Object）应用对象，在Web层与Service层之间抽象的复用对象模型，极为贴近展示层，复用度不高。

- VO

    (Value Object) 表现对象

- DTO

    (Data Transfer Object) 数据传输对象
    
- Query

    数据查询对象，各层接收上层的查询请求。注意超过 2 个参数的查询封装，禁止使用 Map 类来传输
