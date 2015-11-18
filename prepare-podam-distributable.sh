#! /bin/bash

cd /Users/tedonema/dev/podam

mvn clean deploy source:jar javadoc:jar gpg:sign site:site

cd target

jar -cvf bundle.jar *.jar *.asc *.pom

exit 0
