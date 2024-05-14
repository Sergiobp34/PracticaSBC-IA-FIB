
; #########################################
; ############### ONTOLOGIA ###############
; #########################################

(defclass Objectius
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Baixar_de_Pes
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Equilibri
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Flexibilitat
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Manteniment
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Musculaci�
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Posar-se_en_Forma
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Condicio_Fisica
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot Alcada
        (type SYMBOL)
        (create-accessor read-write))
    (multislot Edat
        (type SYMBOL)
        (create-accessor read-write))
    (multislot IMC
        (type FLOAT)
        (create-accessor read-write))
    (multislot Pes
        (type FLOAT)
        (create-accessor read-write))
    (multislot psMax
        (type SYMBOL)
        (create-accessor read-write))
    (multislot psMin
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Parametres_Adicionals
    (is-a Condicio_Fisica)
    (role concrete)
    (pattern-match reactive)
    (multislot Cansanci
        (type SYMBOL)
        (create-accessor read-write))
    (multislot Fatiga_Muscular
        (type SYMBOL)
        (create-accessor read-write))
    (multislot Mareig
        (type SYMBOL)
        (create-accessor read-write))
    (multislot bpm
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Salut
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot informesSalut
        (type STRING)
        (create-accessor read-write))
)

(defclass Dieta
    (is-a Salut)
    (role concrete)
    (pattern-match reactive)
)

(defclass Musculoesqueletics
    (is-a Salut)
    (role concrete)
    (pattern-match reactive)
)

(defclass Habits_Personals
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot Duracio
        (type SYMBOL)
        (create-accessor read-write))
    (multislot Frequencia
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass LLeure
    (is-a Habits_Personals)
    (role concrete)
    (pattern-match reactive)
)

(defclass Despla�ament
    (is-a LLeure)
    (role concrete)
    (pattern-match reactive)
)

(defclass Domestic
    (is-a LLeure)
    (role concrete)
    (pattern-match reactive)
)

(defclass Estatic
    (is-a LLeure)
    (role concrete)
    (pattern-match reactive)
)

(defclass Laborals
    (is-a Habits_Personals)
    (role concrete)
    (pattern-match reactive)
)

(defclass Exercicis
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot complementa_Exerc
        (type INSTANCE)
        (create-accessor read-write))
    (multislot serveix_Obj
        (type INSTANCE)
        (create-accessor read-write))
    (multislot treballa_Musc
        (type INSTANCE)
        (create-accessor read-write))
    (multislot DuracioMax
        (type SYMBOL)
        (create-accessor read-write))
    (multislot DuracioMin
        (type SYMBOL)
        (create-accessor read-write))
    (multislot Nom
        (type STRING)
        (create-accessor read-write))
    (multislot RepsMax
        (type SYMBOL)
        (create-accessor read-write))
    (multislot RepsMin
        (type SYMBOL)
        (create-accessor read-write))
    (multislot kcal/min
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Amb_Aparells
    (is-a Exercicis)
    (role concrete)
    (pattern-match reactive)
)

(defclass Amb_Peses
    (is-a Exercicis)
    (role concrete)
    (pattern-match reactive)
)

(defclass De_Terra
    (is-a Exercicis)
    (role concrete)
    (pattern-match reactive)
)

(defclass Estiraments
    (is-a Exercicis)
    (role concrete)
    (pattern-match reactive)
)

(defclass Sense_Peses
    (is-a Exercicis)
    (role concrete)
    (pattern-match reactive)
)

(defclass Musculs
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Abdomen
    (is-a Musculs)
    (role concrete)
    (pattern-match reactive)
)

(defclass Bra�os
    (is-a Musculs)
    (role concrete)
    (pattern-match reactive)
)

(defclass Cames
    (is-a Musculs)
    (role concrete)
    (pattern-match reactive)
)

(defclass Esquena
    (is-a Musculs)
    (role concrete)
    (pattern-match reactive)
)

(defclass Tors
    (is-a Musculs)
    (role concrete)
    (pattern-match reactive)
)

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot fa_Exerc
        (type INSTANCE)
        (create-accessor read-write))
    (multislot te_CondFis
        (type INSTANCE)
        (create-accessor read-write))
    (multislot te_HabPers
        (type INSTANCE)
        (create-accessor read-write))
    (multislot te_Obj
        (type INSTANCE)
        (create-accessor read-write))
    (multislot te_Salut
        (type INSTANCE)
        (create-accessor read-write))
    (multislot Nom
        (type STRING)
        (create-accessor read-write))
)

(definstances instances
    ([Abdominals_Bicicleta_x10] of De_Terra
    )

    ([Bicicleta] of Amb_Aparells
         (DuracioMax  "40")
         (DuracioMin  "20")
         (RepsMax  "1")
         (RepsMin  "1")
         (kcal/min  "7")
    )

    ([Cinta] of Amb_Aparells
         (DuracioMax  "30")
         (DuracioMin  "5")
         (RepsMax  "1")
         (RepsMin  "1")
         (kcal/min  "9")
    )

    ([Crunches_x10] of De_Terra
    )

    ([Elevacio_de_Cames_x10] of De_Terra
    )

    ([Eliptica] of Amb_Aparells
         (DuracioMax  "30")
         (DuracioMin  "10")
         (RepsMax  "1")
         (RepsMin  "1")
         (kcal/min  "8")
    )

    ([Flexions_al_Pla_x10] of De_Terra
    )

    ([Flexions_amb_Inclinacio_Negativa_x10] of De_Terra
    )

    ([Flexions_amb_Inclinacio_x10] of De_Terra
    )

    ([Mountain_Climbers_x10] of De_Terra
    )

    ([Planxa] of De_Terra
    )

    ([Planxa_Lateral] of De_Terra
    )

    ([Rem] of Amb_Aparells
         (DuracioMax  "20")
         (DuracioMin  "5")
         (RepsMax  "1")
         (RepsMin  "1")
         (kcal/min  "12")
    )

    ([Twists_Russos_x10] of De_Terra
    )

)

; #########################################
; ######## DECLARACION DE MODULOS #########
; #########################################

(defmodule MAIN (export ?ALL))

(defmodule recogida_datos_evento
  (import MAIN ?ALL)
	(export ?ALL)
)

(defmodule analisis_datos
  (import MAIN ?ALL)
  (export ?ALL)
)

(defmodule generacion_resultados
  (import MAIN ?ALL)
  (import recogida_datos_evento deftemplate ?ALL)
  (import analisis_datos deftemplate ?ALL)
  (export ?ALL)
)

; regla inicial, el programa empieza aquí, se empieza dando la bienvenida al cliente

(defrule MAIN::initialRule "Regla inicial"
	(declare (salience 10))
	=>
  	(printout t"         I'M NO COUCH POTATO t'arregla la vida         " crlf)
	(printout t"----------------------------------------------------------" crlf)
  	(printout t crlf)
	(printout t"Benvolgut client, respongui les preguntes i li generem un programa d'entrenament setmanal." crlf)
	(printout t crlf)
    (focus recogida_datos_evento)
)

; #########################################
; ########## RECOGIDA DE DATOS ############
; #########################################

; a continuación definimos las funciones que usaremos para hacer las preguntas
; para recopilar la información necesaria del cliente

; funcion para hacer una pregunta numerica
(deffunction MAIN::pregunta_numerica (?pregunta ?primera ?ultima)
  ; se saca la pregunta por pantalla
  (bind ?linea (format nil "%s " ?pregunta))
  (printout t ?linea)
  ; se guarda la respuesta del usuario en la variable ?respuesta
  (bind ?respuesta (read))
  ; mientras la respuesta no este dentro del rango acceptado o no se responda
  ; con un integer, se vuelve a pedir una respuesta
  (while (or (not (integerp ?respuesta)) (not(and(>= ?respuesta ?primera)(<= ?respuesta ?ultima)))) do
    (bind ?linea (format nil "%s (%d - %d):" "Si us plau, respongui amb un valor dintre del rang de respostes " ?primera ?ultima))
    (printout t ?linea crlf)
    (bind ?respuesta (read))
  )
  ?respuesta
)

; funcion para hacer una pregunta numerica con una unica opcion
(deffunction MAIN::pregunta_single_choice (?pregunta $?llista_elem)
  (bind ?linea (format nil "%s" ?pregunta))
  (printout t ?linea crlf)
  (progn$ (?elem ?llista_elem)
    (bind ?linea (format nil " %d. %s" ?elem-index ?elem))
    (printout t ?linea crlf)
  )
  (format t "%s" "Escriba el índice de la respuesta: ")
  (bind ?respuesta (read))
  (while (or (not (integerp ?respuesta)) (or (< ?respuesta 1)(> ?respuesta (length$ ?llista_elem)))) do
    (bind ?linea (format nil "%s (%d - %d):" "Si us plau, respongui amb un valor dintre del rang de respostes " 1 (length$ ?llista_elem)))
    (printout t ?linea crlf)
    (bind ?respuesta (read))
  )
  ?respuesta
)

; funcion para hacer una pregunta de si/no. Devuelve TRUE si la respuesta es si o s, otherwise devuelve FALSE
(deffunction MAIN::pregunta_si_no (?pregunta)
  (bind ?linea (format nil "%s %s" ?pregunta " (si/no): "))
  (printout t ?linea)
  (bind ?respuesta (read))
  (if (or (eq ?respuesta si) (eq ?respuesta s))
    then TRUE
    else FALSE)
)

; funcion para hacer una pregunta con múltiples respuestas.
(deffunction MAIN::pregunta_multi_choice (?pregunta $?lista_elem)
  (bind ?linea (format nil "%s" ?pregunta))
  (printout t ?linea crlf)
  (progn$ (?elem ?lista_elem)
    (bind ?linea (format nil " %d. %s" ?elem-index ?elem))
    (printout t ?linea crlf)
  )
  (printout t "" crlf)
  (printout t " 0. Ninguna de las opciones anteriores" crlf)
  (printout t "" crlf)
  (printout t "Escriba los índices de sus respuestas separados por un espacio: ")
  (bind ?entrada (readline))
  (bind ?indices_respuesta (str-explode ?entrada))
  (bind $?resultado (create$))
  (progn$ (?indice ?indices_respuesta)
    (if (= ?indice 0) then
      (bind $?resultado (create$))
      (return ?resultado)
    )
    (if (and (integerp ?indice) (and (> ?indice 0) (<= ?indice (length$ ?lista_elem))))
      then (if (not (member ?indice ?resultado))
        then (bind ?resultado (insert$ ?resultado (+ (length$ ?resultado) 1) ?indice))
      )
    )
  )
  ?resultado
)

; #########################################
; ###### PREGUNTAS PARA EL CLIENTE ########
; #########################################

; template para recolectar los datos del evento
(deftemplate MAIN::datos_evento ;
  (slot edat (type INTEGER)) ; guarda la edad del cliente
  (slot numero_comensales (type INTEGER)) ;
  (slot precio_min (type FLOAT)) ;
  (slot precio_max (type FLOAT)) ;
  (multislot restricciones (type INSTANCE)) ; guarda las restricciones alimentarias
  (multislot ingredientes_prohibidos (type INSTANCE)) ;
  (multislot preferencias (type INSTANCE)) ; guarda los estilos que quiere el cliente
  (slot bebida_alcoholica (type SYMBOL)(default FALSE)) ; guarda si se quieren bebidas alcoholicas o no
  (slot bebida_por_platos (type SYMBOL)(default FALSE)) ; guarda si se quiere una bebida por plato o solo una para toda la comida
  (slot temporada_actual (type INSTANCE)) ; guarda la temporada en la que se realiza el evento
)

; hechos para respetar el orden de las preguntas hechas al cliente, a medida que
; hacemos las preguntas vamos poniendo su respectivo hecho representativo a TRUE
(deffacts recogida_datos_evento::preparacion "Establece hechos para poder recoger los datos del evento"
  (numero_comensales FALSE)
  (precio_min FALSE)
  (precio_max FALSE)
  (restricciones_alimentarias FALSE)
  (alergias_alimentarias FALSE)
  (preferencias_alimentarias FALSE)
  (bebida_por_platos FALSE)
  (bebida_alcoholica FALSE)
  (temporada FALSE)
)

; - Quina edat té?
;   # (se espera un número)
(defrule recogida_datos_evento::edat_preguntada "Indiqui la seva edat"
  ; inicialmente no tenemos instanciada ninguna template datos_evento
  (not (datos_evento))
  =>
  (bind ?respuesta (pregunta_numerica "Quina edat té?" 16 100))
  (assert (edat_preguntada TRUE))
  (assert (datos_evento (edat ?respuesta)))
)

; - Cuantos comensales habran en el evento?
;   # (se espera un número)
(defrule recogida_datos_evento::numero_comensales "Indica el numero de comensales presentes en el evento"
  ?fact <- (numero_comensales FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?respuesta (pregunta_numerica "¿Cuántos comensales habrá en el evento?" 1 500))
  (retract ?fact)
  (assert (numero_comensales TRUE))
  (modify ?datos_evento (numero_comensales ?respuesta))
)

; - Indique su presupuesto minimo:
;   # (se espera un número)
(defrule recogida_datos_evento::precio_min "Indica precio mínimo del menú"
  ?fact <- (precio_min FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?respuesta (pregunta_numerica "¿Cuál será el precio mínimo del menú?" 5 80))
  (retract ?fact)
  (assert (precio_min TRUE))
  (modify ?datos_evento (precio_min ?respuesta))
)

; - Indique su presupuesto maximo:
;   # (se espera un número)
(defrule recogida_datos_evento::precio_max "Indica precio máximo del menú"
  ?fact <- (precio_max FALSE)
  ?datos_evento <- (datos_evento(precio_min ?precio_min))
  =>
  (bind ?respuesta (pregunta_numerica "¿Cuál será el precio máximo del menú?" ?precio_min 100))
  (retract ?fact)
  (assert (precio_max TRUE))
  (modify ?datos_evento (precio_max ?respuesta))
)

; - Qué restricciones alimentarias hay?
;   1. Vegeteriano
;   2. Vegano
;   3. Intolerante a la lactosa
;   4. Intolerancia al gluten
(defrule recogida_datos_evento::restricciones_alimentarias "Indica que restricciones alimentarias hay"
  ?fact <- (restricciones_alimentarias FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?restricciones (find-all-instances ((?inst RestriccionAlimentaria)) TRUE ))
  (bind $?posibles_respuestas (create$ ))
  (loop-for-count (?i 1 (length$ $?restricciones)) do
    (bind ?i_restriccion (nth$ ?i ?restricciones))
    (bind ?i_respuesta (send ?i_restriccion get-Nombre))
    (bind $?posibles_respuestas (insert$ $?posibles_respuestas (+ (length$ $?posibles_respuestas) 1) ?i_respuesta))
  )

  (bind ?choice (pregunta_multi_choice "¿Qué restricciones alimentarias hay?" $?posibles_respuestas))

  (bind $?respuesta (create$))
  (loop-for-count (?i 1 (length$ ?choice)) do
    (bind ?index (nth$ ?i ?choice))
    (bind ?i_choice (nth$ ?index ?restricciones))
    (bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?i_choice))
  )
  (retract ?fact)
  (assert (restricciones_alimentarias TRUE))
  (modify ?datos_evento (restricciones $?respuesta))
)

; - ¿Entre los miembros del grupo hay alguien que tenga alergia o deteste algun ingrediente concreto?
;   1. Si
;   2. No
;   [Solo en caso afirmativo de la anterior pregunta]
; - Marque, de entre todos los ingredientes de nuestros platos, quales no pueden aparecer en el menu.
;   [Lista de ingredientes].
(defrule recogida_datos_evento::alergias_alimentarias "Indica si deben prohibirse alimentos"
  ?fact <- (alergias_alimentarias FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?si_no (pregunta_si_no "¿Entre los miembros del grupo hay alguien que tenga alergia o deteste algún ingrediente concreto?"))
  (bind $?respuesta (create$ ))
  (if ?si_no then
    (bind ?ingredientes (find-all-instances ((?inst Ingrediente)) TRUE))
    (bind $?respuestas (create$ ))
    (loop-for-count (?i 1 (length$ $?ingredientes)) do
      (bind ?i_ingrediente (nth$ ?i ?ingredientes))
      (bind ?i_nom (send ?i_ingrediente get-Nombre))
      (bind $?respuestas(insert$ $?respuestas (+ (length$ $?respuestas) 1) ?i_nom))
    )

    (bind ?escogido (pregunta_multi_choice "Selecciona los ingredientes que no toleras: " $?respuestas))
    (loop-for-count (?i 1 (length$ ?escogido)) do
      (bind ?curr-index (nth$ ?i ?escogido))
      (bind ?curr-ingredientes (nth$ ?curr-index ?ingredientes))
      (bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-ingredientes))
    )
  )
  (retract ?fact)
  (assert (alergias_alimentarias TRUE))
  (modify ?datos_evento (ingredientes_prohibidos $?respuesta))
)

; - Alguna preferencia respecto al tipo de platos? (elegir solo 1 opción??)
;   1. Clasicos
;   2. Modernos
;   3. Regionales
;   4. Sibaritas
(defrule recogida_datos_evento::preferencias_alimentarias "Indica la preferencia del estilo de plato"
  ?fact <- (preferencias_alimentarias FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?preferencias (find-all-instances ((?inst Preferencia)) TRUE ))
  (bind $?posibles_respuestas (create$ ))
  (loop-for-count (?i 1 (length$ $?preferencias)) do
    (bind ?i_preferencia (nth$ ?i ?preferencias))
    (bind ?i_respuesta (send ?i_preferencia get-Nombre))
    (bind $?posibles_respuestas (insert$ $?posibles_respuestas (+ (length$ $?posibles_respuestas) 1) ?i_respuesta))
  )
  (bind ?choice (pregunta_multi_choice "¿Tiene alguna preferencia respecto al estilo de los platos?" $?posibles_respuestas))
  (bind $?respuesta (create$ ))
  (loop-for-count (?i 1 (length$ ?choice)) do
    (bind ?index (nth$ ?i ?choice))
    (bind ?i_choice (nth$ ?index ?preferencias))
    (bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?i_choice))
  )
  (retract ?fact)
  (assert (preferencias_alimentarias TRUE))
  (modify ?datos_evento (preferencias $?respuesta))
)

; - Quieres una bebida por cada plato? (s/n)
(defrule recogida_datos_evento::bebida_por_plato "Indica si el menú debe considerar una bebida para cada plato o una comuna para todos"
  ?fact <- (bebida_por_platos FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?respuesta (pregunta_si_no "¿Desea que el menú incorpore una bebida individual para cada plato?"))
  (retract ?fact)
  (assert (bebida_por_platos TRUE))
  (modify ?datos_evento (bebida_por_platos ?respuesta))
)


; - Quieres bebidas alcoholicas? (s/n)
(defrule recogida_datos_evento::bebida_alcoholica "Indica si el menú puede tener o no bebidas alcoholicas"
  ?fact <- (bebida_alcoholica FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?respuesta (pregunta_si_no "¿El menú propuesto puede contener bebidas alcohólicas?"))
  (retract ?fact)
  (assert (bebida_alcoholica TRUE))
  (modify ?datos_evento (bebida_alcoholica ?respuesta))
)

; - ¿Para que epoca desea hacer la reserva?
;   1. Invierno
;   2. Primavera
;   3. Verano
;   4. Otoño
(defrule recogida_datos_evento::temporada_actual "Indica la temporada para la cual se hace la reserva"
  ?fact <- (temporada FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?temporadas (find-all-instances ((?inst Temporada)) TRUE ))
  (bind $?posibles_respuestas (create$ ))
  (loop-for-count (?i 1 (length$ $?temporadas)) do
    (bind ?i_temporada (nth$ ?i ?temporadas))
    (bind ?i_respuesta (send ?i_temporada get-Nombre))
    (bind $?posibles_respuestas (insert$ $?posibles_respuestas (+ (length$ $?posibles_respuestas) 1) ?i_respuesta))
  )
  (bind ?choice (pregunta_single_choice "¿Para qué temporada del año desea hacer la reserva en Rico Rico?" $?posibles_respuestas))
  (bind ?respuesta (nth$ ?choice ?temporadas))
  (retract ?fact)
  (assert (temporada TRUE))
  (modify ?datos_evento (temporada_actual ?respuesta))
)

; una vez hemos acabado de hacer las preguntas, pasamos a analizar los datos,
; accedemos a un nuevo módulo

(defrule recogida_datos_evento::cambio_a_modulo_analisis "Una vez hechas todas las preguntas pasamos al modulo de analisis de los datos"
  (edat_preguntada TRUE)
  (numero_comensales TRUE)
  (precio_min TRUE)
  (precio_max TRUE)
  (restricciones_alimentarias TRUE)
  (alergias_alimentarias TRUE)
  (preferencias_alimentarias TRUE)
  (bebida_por_platos TRUE)
  (bebida_alcoholica TRUE)
  (temporada TRUE)
  =>
  (focus analisis_datos)
)