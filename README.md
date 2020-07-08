# inventarioOCI
Obtiene el inventario de un tenancy OCI

Para generar, primero hay que ingresar a la consola OCI con un usuario con privilegios para VER el tanancy
Luego hay que entrar a la Consola "Cloud Shell"

![image0001](fotos/image0001.png)

Ejecutar comando

           $ git clone https://github.com/mgutierr22abr/inventarioOCI.git

![image0002](fotos/image0002.png)

Ir al directorio y revisar regiones disponibles

           $ cd inventarioOCI
           $ ./regiones.sh

![image0003](fotos/image0003.png)

Ejecutar el inventario

           $ nohup ./corre.sh us-phoenix-1 &

![image0004](fotos/image0004.png)

Verificar Ejecución en proceso de "corre.sh"

           $ ps -ef 

![image0005](fotos/image0005.png)

Verificar Resultado/Estado (Mensaje EXITO)

           $ tail nohup.out

![image0006](fotos/image0006.png)

![image0007](fotos/image0007.png)

Esperar hasta que aparezca mensaje de EXITO

![image0008](fotos/image0008.png)

NOTA: No cerrar el browser
si entrega mensaje de inactividad, simplemente reconectarse

![image0009](fotos/image0009.png)

Una vez reconectado, volver al directorio y verificar estado

           $ cd inventarioOCI
           $ ps -ef
           $ tail nohup.out
