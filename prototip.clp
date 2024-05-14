
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
  (printout t " 0. Cap de les opcions anteriors" crlf)
  (printout t "" crlf)
  (printout t "Escriu els índexs de les respostes separades per un espai: ")
  (bind ?entrada (readline))
  (bind ?indices_respuesta (explode$ ?entrada))
  (bind $?resultado (create$))
  (progn$ (?indice ?indices_respuesta)
    (if (= ?indice 0) then
      (bind $?resultado (create$))
      (return ?resultado)
    )
    (if (and (integerp ?indice) (and (> ?indice 0) (<= ?indice (length$ ?lista_elem))))
      then (if (not (member$ ?indice ?resultado))
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
  (slot pes (type FLOAT)) ; guarda el peso del cliente
  (slot alcada (type FLOAT)) ; guarda la altura del cliente
  (slot psMax (type FLOAT)) ; guarda la pressió sanguinia máxima que puede soportar el cliente
  (slot psMin (type FLOAT)) ; guarda la pressió sanguinia mínima que puede soportar el cliente
)

; hechos para respetar el orden de las preguntas hechas al cliente, a medida que
; hacemos las preguntas vamos poniendo su respectivo hecho representativo a TRUE
(deffacts recogida_datos_evento::preparacion "Establece hechos para poder recoger los datos del evento"
  (pes FALSE)
  (alcada FALSE)
  (psMax FALSE)
  (psMin FALSE)
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

; - Quin pes té?
;   # (se espera un número)
(defrule recogida_datos_evento::pes "Indiqui el seu pes"
  ?fact <- (pes FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?respuesta (pregunta_numerica "Quin pes té?" 40 150))
  (retract ?fact)
  (assert (pes TRUE))
  (modify ?datos_evento (pes ?respuesta))
)

; - Quina alçada té?
;   # (se espera un número)
(defrule recogida_datos_evento::alcada "Indiqui la seva alçada"
  ?fact <- (alcada FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?respuesta (pregunta_numerica "Quina alçada té?" 50 240))
  (retract ?fact)
  (assert (alcada TRUE))
  (modify ?datos_evento (alcada ?respuesta))
)

; - Quina és la seva pressió sanguinea màxima?
;   # (se espera un número)
(defrule recogida_datos_evento::psMax "Indiqui la seva pressió sanguinea màxima"
  ?fact <- (psMax FALSE)
  ?datos_evento <- (datos_evento)
  =>
  (bind ?respuesta (pregunta_numerica "Quina és la seva pressió sanguinea màxima? (en mmHg)" 90 140))
  (retract ?fact)
  (assert (psMax TRUE))
  (modify ?datos_evento (psMax ?respuesta))
)

; - Quina és la seva pressió sanguinea mínima?
;   # (se espera un número)
(defrule recogida_datos_evento::psMin "Indiqui la seva pressió sanguinea mínima"
  ?fact <- (psMin FALSE)
  ?datos_evento <- (datos_evento(psMax ?psMax))
  =>
  (bind ?respuesta (pregunta_numerica "Quina és la seva pressió sanguinea mínima? (en mmHg)" 60 90))
  (retract ?fact)
  (assert (psMin TRUE))
  (modify ?datos_evento (psMin ?respuesta))
)

; una vez hemos acabado de hacer las preguntas, pasamos a analizar los datos,
; accedemos a un nuevo módulo

(defrule recogida_datos_evento::cambio_a_modulo_analisis "Una vez hechas todas las preguntas pasamos al modulo de analisis de los datos"
  (edat_preguntada TRUE)
  (pes TRUE)
  (alcada TRUE)
  (psMax TRUE)
  (psMin TRUE)
  =>
  (focus analisis_datos)
)