;;; ---------------------------------------------------------
;;; .clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology .\turtle.ttl
;;; :Date 14/05/2024 08:47:07

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

(defclass Musculació
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

(defclass Desplaçament
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

(defclass Braços
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
