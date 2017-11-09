(setq a 0) ; Se inicializa una variable en cero.
(loop  ; Se inicializa el loop
   (setq a (incf a 1)) ; Incrementea (incf) a en uno cada vez que se repite el ciclo.
   (write a) ; Se muestra en consola el valor de la variable a
   (terpri) ; Se haceun salto de linea
   (when (= a 7) (return a)) ; Si a es igual a 7 se devuelve a y se termina el ciclo. Este ciclo cuenta de 1 a 7.
)

(loop for a from 10 to 20 ; Se inicia un ciclo que toma desde 10 a 20
   do (print a) ; imprime el contenido en consola desde el 10 al 20.
)

(do ((x 0 (incf x 1)) ; Primera exprecion a evaluar con su respectivo actualizacion, en este caso uincremente
   (y 10 (decf y 1))) ; Segunda exprecion a evaluar con su respectivo actualizacion, en este caso decrese
   ((= x y)) ; Expresion a evaluar si es falsa sigue haciendo ciclos hasta evaluar verdadera la exprecion
   (format t "~% x = ~d  y = ~d" x y) ; imprime en temrnal siempre y cuanto la exprecon evaluada sea falsa.
)

(dotimes (a 5) ; Repite 5 veces el ciclo empezando en cero.
   (print a) (prin1 (* a a)) ; a toma un valor de 0 a 4 dependiendo el ciclo en el que se encuentro y realiza la operacion, hasta repetir el ciclo las veces dichas en la primera linea de dotimes  
)

(dolist (d '(1 2 3 4 5)) ; Itinera sobre los valores de una lista
   (format t "~% Valor d: ~d, d al cuadrado: ~d" d (* d d)) ; realiza los procesos hasta terminar con la lista.
)