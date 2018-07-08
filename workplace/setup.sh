#!/bin/bash
mvn archetype:generate											\
	-DarchetypeGroupId=com.isortegah							\
	-DarchetypeArtifactId=isortegah-archetype-cucumber-testng	\
	-DarchetypeVersion=0.1.0-SNAPSHOT							\
	-DartifactId=validations									\
	-Dversion=0.1.0-SNAPSHOT									\
	-DgroupId=com.isortegah.validations							\
	-Dname=validations
