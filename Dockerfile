# 베이스 이미지 OpenJDK 21 사용
FROM openjdk:21-jdk-slim

# 작업할 디렉토리 설정
WORKDIR /app

# 빌드된 jar 파일 복사
COPY build/libs/*.jar app.jar

# 실행 명령어 설정
ENTRYPOINT ["java", "-jar", "app.jar"]
