@echo off 

echo "Unpacking the project JAR"
cd target
mkdir dependency
cd dependency
jar -xf ../*.jar


