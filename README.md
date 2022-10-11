# Arquitectura_pmodnav
<em>  </em>
En este proyecto se encuentran todos los archivos generados para el desarollo del proyecto. 
Este proyecto se recogen datos sobre el sensor PmodNAV y este los manda a la placa PYNQ Z1, donde se procesan para tener valores físicos y son publicados mediante ROS. 
Para realizar un mejor estudios se han guardado estos datos en un archivo.bag y mediante ROS TOOLBOX de MATLAB se han realizado una serie de gráficos.

# 3.Sensor Pmpd NAV
<em>  </em>
El sensor Pmod NAV es un sensor inercial (IMU) de 10 grados de libertad. Este sensor tiene acelerómetro, giroscopio, magnetómetro, barómetro (altitud y temperatura).

# Estructura del proyecto
<em>  </em>
Este proyecto se caracteriza por tener la siguiente arquitectura
![esquema](https://user-images.githubusercontent.com/115508916/195158527-ca51a97f-a34b-410f-ba8c-59f01131109f.png)
En esta estructura se observa como el sensor Pmod NAV envía los datos al MicroBlaze mediante el bus SPI. El MicroBlaze procesa los datos y los envía al Mailbox.
El ARM recoge los datos del Mailbox y realiza la transformación de dato binario a valor físico. Después mediante ROS se realiza el Publisher y el Subscriber, 
y se graban los datos en un archivo.bag mediante el comando rosbag.
Por último mediante el ROS TOOLBOX se realizan una serie de gráficos con los resultados guardados en el archivo.bag.

# 1.Carpeta pynq_lib
<em>  </em>
Esta carpeta se encuentra en el siguiente directorio: home/xilinx/pynq/lib/ 
Este directorio tiene la siguiente forma:
![pynq_lib](https://user-images.githubusercontent.com/115508916/195156110-2b92d5d6-445b-4ff7-9b38-164aad36ccd4.png)
En el archivo pmodnav.c se encontrará el driver de Microblaze. Po un lado se encuentra las conexiones con el sensor Pmod NAV mediante el bus SPI,
y por otro lado tiene las conexiones con el Mailbox.
Hay que tener cuidao con el bus SPI, ya que el sensor Pmod NAV denomina de una manera a los pinout del sensor y el MicroBlaze de otra, hay que denominarlos como
lo hace MicroBlaze.
En el archivo pmodnav.py, el ARM recoge los datos del MAilbox, y transforma el dato binario en un valor físico y se realiza una conversión para que el sensor tenga las 
unides del sistema universal.

# 3.Jupyter Notenooks
<em>  </em>
Se crea el archivo pmodnav.ipnyb en la siguiente dirección: Jupyter/base/pmod. Este archivo nos permite comprobar que el driver esta bien hecho. Lo que hacemos es
pedir desde Jupyter el valor de dichas funciones definidas en el driver sin necesidad de crear el Publlisher y el Subscriber para ver los resultados.
Lo único malo es que te daun valor cada vez que lanzas desde Jupyter.

# 3.catkin_ws
<em>  </em>
Esta carpeta se encuentra en el siguiente directorio: home/xilinx/catkin_ws
Este directorio se caracteriza por tener la siguiente estructura:
![catkin](https://user-images.githubusercontent.com/115508916/195159216-8d6e3ab8-c846-408b-a3b6-66a95bae8dd4.png)
Esta estructura se ha creado siguiendo los tutoriales de ROS. Se ha creado un Publisher (pmonav_talker.py) y un Subdcriber (pmodnav_listener.py) en la carpeta de scripts
y entre ello se intercambian un mensaje que se encuentra en la carpeta msg donde se definen las variables.

# 4.bagfile
<em>  </em>
Siguiendo los tutoriales de ROS, se lanza el comando rosbag. Este archivo nos guarda los valores que se intercambian el Publisher y el Subscriber.
Mediante la aplicación de WinSCP, lo que hacemos es copiar y pegar el archivo en nuestro escritorio. De esta forma abrimos MATLAB y creamos un archivo en la misma carpeta
donde están localizdos estos archivos. Siguiendo los pasos marcados en el programa somos capces de extraer la información el paquete. Se han realizdo dos pruebas.
La primera es sobre un cambio de orientación en la placa para observar como varían los datos, y la segunda es colocando el sensor en la rodilla mientras una persona
anda en línea recta.
