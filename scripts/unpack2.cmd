@echo off 

IF "%~1"=="" ( GOTO :ERROR_LABEL ) ELSE GOTO :EXECUTE

:ERROR_LABEL
echo "Missing Release Name" 
exit /b

:EXECUTE
echo "Deflating the JAR for Docker Build"
cd target
mkdir extracted
cd ..
java -Djarmode=layertools -jar target/%1.jar extract --destination target/extracted
echo "Deflation Complete..."


