; FUNCIONES
(defun saludar (nombre) ; defun define la funcion, seguido del nombre y entre parentesis los parametros.
  (concatenate 'String "Hola " nombre) 
  ; Este es el cuerpo de la funcion donde ejecuta el codigo, las funcones en lisp devuelven el ultimo valor definido.
)

(write-line (saludar "Andres"))


;FUNCIONES CON VALORES OPCIONALES
(defun valopcional (&optional h) ; Despues de &optional van los argumentos opcionales.
  (concatenate 'String "el argumento h es: " h) ; concatenate nos permite concatenar valores en este caso texto definido con 'String
)

(write-line (valopcional))
(write-line (valopcional "esto"))


;FUNCIONES CON VALORES ADICIONALES
(defun valadicional (a d &rest otros) ; Esta funcion pide dos argumentos como minimo dos agumentos a y d, el resto de argumentos se guardan en otros si existen estos se lleva cabo gracias a &rest
  (list a d otros)
)
(print (valadicional "carlos" "juan")) ; Los dos argumentos obligatorios
(print (valadicional "carlos" "juan" "Felipe" "Luis")) ; Argumentos obligatorios y dos argumentos de mas.


;FUNCIONES CON PALABRAS CLAVES
(defun valclave (&key a b) ; La opcion &key nos permite especificar el valor para cada argumento al llamarlo.
  (concatenate 'String "hola " a " y " b)
)

(print (valclave :b "Juan" :a "Maria")) ; cuando se invoca la funcion hay que especificar el argumento con : y el nombre del argumento, mas su valor.


;FUNCIONES CON RETORNO PREDETERMINADO
(defun retorno (h)
  (print "Dentro de la funcion retorno y antes de return-from")      
  (return-from  retorno h) ; la palabra return-from nos permite devolver el valor que queramos explicitamente, no olvide que debe estar seguido del nombre de la funcion y  lo que se quiere devolver, es importante saber que hasta este punto se ejecuta la funcion de ahi en adelante no se ejecuta.
  (print "Dentro de la funcion retorno y despues de return-from")
)

(print (retorno "Hola"))