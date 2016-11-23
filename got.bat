@ECHO OFF 
SET GOT_HOME=%~dp0
SET BUILD=%GOT_HOME%build\
SET changed=0

if not exist %BUILD% mkdir %BUILD%

REM FIXME: recompiles source unconditionally
java -Xmx6072m -Xss10M -XX:MaxJavaStackTraceDepth=-1 -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none -cp ";%GOT_HOME%;%GOT_HOME%lib\*" frege.compiler.Main -target 1.7 -d %BUILD% %GOT_HOME%src\Gottlob.fr

copy /b %BUILD%last.success > nul

REM run build
java -Xmx6072m -Xss10M -XX:MaxJavaStackTraceDepth=-1 -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none -cp "%BUILD%;%GOT_HOME%lib\*;" Gottlob %GOT_HOME% %*
