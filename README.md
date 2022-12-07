# Arquitectura_pmodnav
<em>  </em>
En este proyecto se encuentran todos los archivos generados para el desarollo del proyecto. 
Este proyecto consiste en que el sensor PmodNAV recoga datos, y los envíe a la placa PYNQ Z1, donde estos datos son procesados para tener valores físicos y sean publicados mediante ROS. 
Para realizar un mejor estudios se han guardado estos datos en un archivo.bag y mediante ROS TOOLBOX de MATLAB se han realizado una serie de gráficos.

# Estructura del proyecto
<em>  </em>
Este proyecto se caracteriza por tener la siguiente arquitectura:
El sensor Pmod NAV envía los datos al MicroBlaze mediante el bus SPI. El MicroBlaze procesa los datos y los envía al Mailbox.
El ARM recoge los datos del Mailbox y realiza la transformación de dato binario a valor físico. Después mediante ROS se realiza el Publisher y el Subscriber, 
y se graban los datos en un archivo.bag mediante el comando rosbag.
Por último mediante el ROS TOOLBOX se realizan una serie de gráficos con los resultados guardados en el archivo.bag.
![esquema](https://user-images.githubusercontent.com/115508916/195158527-ca51a97f-a34b-410f-ba8c-59f01131109f.png)

# Configuración
<em>  </em>
El sensor Pmod NAV es un sensor inercial (IMU) de 10 grados de libertad. Este sensor tiene acelerómetro, giroscopio, magnetómetro, barómetro (altitud y temperatura). Este debe conectarse al puerto PMODA o PMODB. En este proyecto se ha establecido conexión con el puerto PMODA.

![configuracion](https://user-images.githubusercontent.com/115508916/206214276-ee9d6157-aa64-445f-b86a-789b40400c55.jpg)
![PlacaFPGA-removebg-preview](https://user-images.githubusercontent.com/115508916/206218150-f2bc259b-181a-4505-9f72-898a51f1d761.png)
Para que la placa funcione se debe conectar a una red eléctrica (que utilizara como batería) y a una red de internet (para establecer conexión con el portátil), para ello se ha empleado la aplicación de PuTTY. En este proyecto se han estudiado dos maneras:
![01](https://user-images.githubusercontent.com/115508916/206217187-8a25d1e5-b905-45f7-898a-07f979d07b7d.jpg)
![02](https://user-images.githubusercontent.com/115508916/206217383-a8ae849b-2dc0-413c-ba65-2f7e943620eb.jpg)



# Arquitectura
<em>  </em>
Una vez que el sensor este conectado a la placa, y la placa este conectada al router y a red electrica (bateria), pasamos a explicar la arquitectura empleada para poder desarollar este proyecto. Esta parte se divide en: carpeta pynq_lib, jupyter notebooks, catkin_ws y bagfiles.

# 1.Carpeta pynq_lib
<em>  </em>
Esta carpeta se encuentra en el siguiente directorio: home/xilinx/pynq/lib/ 
En el archivo pmodnav.c se encontrará el driver de Microblaze. Por un lado se encuentra las conexiones con el sensor Pmod NAV mediante el bus SPI,
y por otro lado tiene las conexiones con el Mailbox.
En el archivo pmodnav.py, el ARM recoge los datos del MAilbox, y transforma el dato binario en un valor físico y se realiza una conversión para que el sensor tenga las 
unidadaes del sistema universal.
![pynq_lib](https://user-images.githubusercontent.com/115508916/206218803-8690d1af-e3f9-447d-b619-399bdd71bb0b.png)

# 1.1.Carpeta pmodnav.c
<em>  </em>
Hay que tener cuidao con el bus SPI, ya que el sensor Pmod NAV denomina de una manera a los pinout del sensor y el MicroBlaze de otra, hay que denominarlos como
lo hace MicroBlaze.
![pinout_SPI](https://user-images.githubusercontent.com/115508916/206219203-21fedd6e-3ff6-4f98-a165-8f5ec45f9908.png).

# 3.Jupyter Notenooks
<em>  </em>
Se crea el archivo pmodnav.ipnyb en la siguiente dirección: Jupyter/base/pmod. Este archivo nos permite comprobar que el driver esta bien hecho. Lo que hacemos es
pedir desde Jupyter el valor de dichas funciones definidas en el driver sin necesidad de crear el Publisher y el Subscriber para ver los resultados.
Lo único malo es que te da un valor cada vez que lanzas desde Jupyter. Es decir, que no te da valores en movimiento.

# 3.catkin_ws
<em>  </em>
Esta carpeta se encuentra en el siguiente directorio: home/xilinx/catkin_ws
Esta estructura se ha creado siguiendo los tutoriales de ROS. Se ha creado un Publisher (pmonav_talker.py) y un Subdcriber (pmodnav_listener.py) en la carpeta de scripts y entre ellos se intercambian un mensaje que se encuentra en la carpeta msg donde se definen las variables.
![catkin](https://user-images.githubusercontent.com/115508916/195159216-8d6e3ab8-c846-408b-a3b6-66a95bae8dd4.png)

# 4.bagfile
<em>  </em>
Siguiendo los tutoriales de ROS, se lanza el comando rosbag. Este archivo nos guarda los valores que se intercambian el Publisher y el Subscriber.
Mediante la aplicación de WinSCP, lo que hacemos es copiar y pegar el archivo en nuestro escritorio. De esta forma abrimos MATLAB y creamos un archivo en la misma carpeta
donde están localizdos estos archivos. Siguiendo los pasos marcados en el programa somos capces de extraer la información el paquete. Se han realizdo dos pruebas.
La primera es sobre un cambio de orientación en la placa para observar como varían los datos, y la segunda es colocando el sensor en la rodilla mientras una persona
anda en línea recta.
