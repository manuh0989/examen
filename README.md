# examen
CRUD usuarios, Login

LEVANTAMIENTO DE PROYECTO
PASO 1
 descomprimir el ZIP
 -copiar y pegar la carpeta examen en el servidor local
 -cambiar la conexion de base de datos
  -entrar a examen/config/database.php, en la linea 42 mover los parametros database,username,password
 -Crear la base de datos examen
  -ejecutar el script SQL dump-examen-202003150443.sql
  -o entrar desde la terminal a direccion del proyexto ejemplo ' cd var/www/html/examen' y ejecutar los siguientes comandos
    -php artisan migrate
    -php artisan db:seed
    -php artisan  migrate:fresh --seed
    
  -ENTRAR AL SISTEMA
  usuario: prueba@correo.com
  pass: 123
    
    
    
 
 
 
