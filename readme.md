# spring-mybatis-jmh-demo
Basic JMH implementation for benchmark testings on Mybatis operations with the integration of Spring framework

# Run
Execute `src/main/resources/schema.sql` and an INSERT statement with 25,000 rows of dummy data on `hr.employees` table that are generated by running `dummy-generation.py` file,
then run `src/test/java/com/example/web/benchmark/BenchmarkTest.java` for the testing. 

# Benchmark Result 

<img width="702" alt="Capture 2023-10-07 at 9 40 07 PM" src="https://github.com/CynicDog/spring-mybatis-jmh-demo/assets/96886982/e54e6ec7-7882-4a18-9236-2f0cee14e110">
