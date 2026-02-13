Proyecto: Karate Petstore

Objetivo
- Automatizar pruebas de API para Petstore usando Karate.

Versiones de tecnologia
- Java: 11 (definido en pom.xml)
- Karate: 1.5.0 (pom.xml)
- Maven Compiler Plugin: 3.11.0 (pom.xml)
- Maven Surefire Plugin: 3.0.0 (pom.xml)
- Maven: 3.x (recomendado 3.8+)

Estructura relevante
- src/test/java/examples/petstore/: features y runners
- src/test/resources/.env: variables de entorno para base URL
- target/karate-reports/: reportes de ejecucion

Configuracion de entorno
1) Editar el archivo src/test/resources/.env
   BASE_URL=https://petstore.swagger.io/

2) (Opcional) Crear un archivo por ambiente:
   src/test/resources/.env.<env>
   Ejemplo:
   BASE_URL=https://otro-host.com/

3) Ejecutar con ambiente especifico:
   mvn test -Dkarate.env=<env>

Ejecucion de pruebas
1) Ejecutar todas las pruebas:
   mvn test

2) Ejecutar por tag (una prueba especifica):
   mvn test -Dkarate.options="--tags @addMascota"

Tags disponibles
- @users
- @addMascota
- @constuMascota
- @getMascotaStatus
- @updateMascota

Reportes
- Los reportes HTML y JSON se generan en:
  target/karate-reports/

Reproducibilidad
- Usar Java 11 y Maven 3.x.
- Verificar conectividad a https://petstore.swagger.io/.
- Ejecutar los comandos anteriores para generar los reportes.
