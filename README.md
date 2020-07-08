# inventarioOCI
Obtiene el inventario de un tenancy OCI

![image0001](image0001.png)

Ejecutar comando
git clone https://github.com/mgutierr22abr/inventarioOCI.git

![image0002](image0002.png)

Ir al directorio y revisar regiones disponibles
cd inventarioOCI
./regiones.sh

![image0003](image0003.png)

Ejecutar el inventario

nohup ./corre.sh us-phoenix-1 &

![image0004](image0004.png)

Verificar Ejecución en proceso de "corre.sh"

ps -ef 

![image0005](image0005.png)

Verificar Resultado/Estado (Mensaje EXITO)

tail nohup.out

![image0006](image0006.png)

![image0007](image0007.png)

Esperar hasta que aparezca mensaje de EXITO

![image0008](image0008.png)

NOTA: No cerrar el browser
si entrega mensaje de inactividad, simplemente reconectarse





￼



