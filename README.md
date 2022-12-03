
# Proyecto final GPDS

El presente proyecto es un sistema web hecho en Laravel, incluye un Login con base de datos y captcha, cuenta con distintos CRUD que asemejan un sistema de ventas. Fue desarrollado en el periodo de mayo – agosto del 2022 para fines educativos y prácticos. 

## Recomendaciones para considerar
- Tener instalado XAMPP versión 8.1.12.
- Contar con el programa Composer.
- Para utilizar las características de GitHub, instalar GIT.


## Instrucciones de instalación
- Descargar o copiar el repositorio desde el siguiente menú:

<img src="https://i.postimg.cc/mgMPPKxN/menu-git.png">

```html
git clone https://github.com/OscarLeonides/ReactADS_PFinal.git
```

- En caso de que las carpetas “Vendor” no se hayan cargado correctamente, ejecutar el siguiente comando:
```html
composer upgrade
```
- Copiar y modificar el archivo de configuraciones:
```html
cp .env.example .env
```
- Para generar la llave privada de tu proyecto, ejecutar el siguiente comando:
```html
php artisan key:generate
```
- Para finalizar, inicia tu servidor:
```html
php artisan serv
```

## Base de datos se encuentra en la carpeta del proyecto, nombrada como "paginaADS.sql"
