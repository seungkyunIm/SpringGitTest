FROM gradle

# 프로젝트 대상 gitHub에서 가져 온다. 
WORKDIR /app
RUN git clone https://github.com/seungkyunIm/SpringGitTest.git
RUN gradle clean test bootJar

EXPOSE 8080

#ENTRYPOINT [ "sleep", "infinity"]
ENTRYPOINT [ "java", "-jar", "/app/SpringGitTest/build/libs/SpringGitTest.jar" ]