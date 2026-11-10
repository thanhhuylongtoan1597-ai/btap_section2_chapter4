# Bước 1: Build file WAR bằng Maven
FROM maven:3.8.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Bước 2: Chạy ứng dụng trên Tomcat 9
FROM tomcat:10.1-jdk17-openjdk-slim
RUN rm -rf /usr/local/tomcat/webapps/ROOT
# Đổi ch02email.war thành tên file war tạo ra trong thư mục target của bạn
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]