# Archetype-Cucumber-TestNG


Este Arquetipo es un patrón o modelo original, a partir del cual podemos crear un proyecto de automatización de pruebas utilizando Cucumber como framework para implementar BDD y TestNG como framework de ejecución de las pruebas. 

El Arquetipo nos proporciona lo minimo necesario para comenzar a codifcar nuestras pruebas. En cuestión de segundos, podemos tener un proyecto Maven en funcionamiento.


## Instalación

* Prerequisitos  
    ** Java  
    ** Maven

Al momento no se ha publicado el Arquetipo en algún repositorio, por lo que se requiere clonar el proyecto.

```bash
git clone https://github.com/isortegah/archetype-cucumber-testng.git
```

Una vez con el Arqeutipo en nuestro equipo procedemos a ingresar a el y ejecutar el comando:

```bash
mvn install
```

Esto pondrá a disposición al Arquetipo en el repositorio local de maven. Ahora podemos proceder a crear nuestro proyecto con el.

**Nota:** Ubicarse en el directorio donde se requiere crear el proyecto.

```bash
mvn archetype:generate \
	-DarchetypeGroupId=com.isortegah \
	-DarchetypeArtifactId=isortegah-archetype-cucumber-testng	\
	-DarchetypeVersion=0.1.0-SNAPSHOT \
	-DartifactId=<artifactIS> \
	-Dversion=<version artifact> \
	-DgroupId=<groupID project>	\
	-Dname=<project name>
```

Ejemplo:

```bash
mvn archetype:generate \
	-DarchetypeGroupId=com.isortegah \
	-DarchetypeArtifactId=isortegah-archetype-cucumber-testng \
	-DarchetypeVersion=0.1.0-SNAPSHOT \
	-DartifactId=validations \
	-Dversion=0.1.0-SNAPSHOT \
	-DgroupId=com.isortegah.validations \
	-Dname=validations
```
Una vez se haya creado el proyecto, ingresar al directorio del mismo y ejecutar:

```bash
mvn verify
```
Lo que nos arrojara lo siguiente: 

```java
[INFO] -------------------------------------------------------
[INFO]  T E S T S
[INFO] -------------------------------------------------------
[INFO] Running com.isortegah.validations.TestRunner
Feature: To search cucumber in google

  @SearchGoogle
  Scenario: Cucumber Google   # src/test/resources/features/test.feature:3
    Given I am on google page # GivenSteps.i_am_on_google_page()
      cucumber.api.PendingException: TODO: implement me
        at com.isortegah.validations.stepdefinition.GivenSteps.i_am_on_google_page(GivenSteps.java:16)
        at ?.I am on google page(src/test/resources/features/test.feature:4)


Pending scenarios:
src/test/resources/features/test.feature:3 # Cucumber Google

1 Scenarios (1 pending)
1 Steps (1 pending)
0m0.022s

cucumber.api.PendingException: TODO: implement me
        at com.isortegah.validations.stepdefinition.GivenSteps.i_am_on_google_page(GivenSteps.java:16)
        at ?.I am on google page(src/test/resources/features/test.feature:4)

[WARNING] Tests run: 1, Failures: 0, Errors: 0, Skipped: 1, Time elapsed: 0.349 s - in com.isortegah.validations.TestRunner
[INFO]
[INFO] Results:
[INFO]
[WARNING] Tests run: 1, Failures: 0, Errors: 0, Skipped: 1
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 2.083 s
[INFO] Finished at: 2018-07-28T20:39:03-05:00
[INFO] Final Memory: 14M/314M
[INFO] ------------------------------------------------------------------------
```
Con esto tendremos lo mínimo necesario para comenzar a codificar pruebas.