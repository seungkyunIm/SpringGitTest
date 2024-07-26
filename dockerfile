FROM gradle

# 프로젝트 대상 gitHub에서 가져 온다. 
WORKDIR /app

# 프로젝트 가져오기
RUN git clone https://github.com/seungkyunIm/SpringGitTest.git

# 프로젝트 안으로 이동해서 배포 실행
WORKDIR /app/SpringGitTest
RUN gradle clean test bootJar



# 포트 오픈
EXPOSE 8080

#ENTRYPOINT [ "sleep", "infinity"]
ENTRYPOINT [ "java", "-jar", "/app/SpringGitTest/build/libs/SpringGitTest-1.jar" ]