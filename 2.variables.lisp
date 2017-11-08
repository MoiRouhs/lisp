(defvar x "defvar") ; Variable global
(setq y "setq") ; Especifica el tipo de variable
(write-line x)
(write-line y)

(let ((g "let") (e "let2")) ; Variables locales.
  (format t "esta es el valor de g: ~g y e: ~e" g e)
)
(defconstant PI 3.141592) ; Variables constantes que nunca cambian.
(print PI)
