# karatePrueba

Proyecto de pruebas con Karate para consumir el Petstore.

## Requisitos

- Java 11+ (o el que use tu proyecto)
- Maven

## Configuracion de entorno

El base URL se carga desde el archivo `.env` en `src/test/resources/.env`.

Ejemplo:

```
BASE_URL=https://petstore.swagger.io/
```

Para ejecutar en otro ambiente, puedes crear un archivo `src/test/resources/.env.<env>`
y ejecutar con `-Dkarate.env=<env>`.

Ejemplo:

```
BASE_URL=https://otro-host.com/
```

## Ejecutar pruebas

Ejecutar todas las pruebas:

```
mvn test
```

Ejecutar por tag (uno por uno):

```
mvn test -Dkarate.options="--tags @addMascota"
```

Tags disponibles:

- @users
- @addMascota
- @constuMascota
- @getMascotaStatus
- @updateMascota

## Reportes

Al finalizar, Karate deja los reportes en `target/karate-reports/`.
