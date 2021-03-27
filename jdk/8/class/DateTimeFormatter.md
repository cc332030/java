
# DateTimeFormatter 日期格式化

```java
DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy MM dd");
LocalDate date = LocalDate.parse("2017 06 17", formatter);
System.out.println(formatter.format(date));
```
