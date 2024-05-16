;;; ---------------------------------------------------------
;;; .clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology .\turtle.ttl
;;; :Date 16/05/2024 18:38:03

(defclass Salut
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot informesSalut
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
    (slot DuracioMax
        (type SYMBOL)
        (create-accessor read-write))
    (slot DuracioMin
        (type SYMBOL)
        (create-accessor read-write))
    (slot Nom
        (type STRING)
        (create-accessor read-write))
    (slot RepsMax
        (type SYMBOL)
        (create-accessor read-write))
    (slot RepsMin
        (type SYMBOL)
        (create-accessor read-write))
    (slot kcal/min
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

(defclass Equilibris
    (is-a Exercicis)
    (role concrete)
    (pattern-match reactive)
)

(defclass Habits_Personals
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot Duracio
        (type SYMBOL)
        (create-accessor read-write))
    (slot Frequencia
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

(defclass Condicio_Fisica
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot Alcada
        (type SYMBOL)
        (create-accessor read-write))
    (slot Edat
        (type SYMBOL)
        (create-accessor read-write))
    (slot IMC
        (type FLOAT)
        (create-accessor read-write))
    (slot Pes
        (type FLOAT)
        (create-accessor read-write))
    (slot psMax
        (type SYMBOL)
        (create-accessor read-write))
    (slot psMin
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Parametres_Adicionals
    (is-a Condicio_Fisica)
    (role concrete)
    (pattern-match reactive)
    (slot Cansanci
        (type SYMBOL)
        (create-accessor read-write))
    (slot Fatiga_Muscular
        (type SYMBOL)
        (create-accessor read-write))
    (slot Mareig
        (type SYMBOL)
        (create-accessor read-write))
    (slot bpm
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Musculs
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Objectius
    (is-a USER)
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
    (slot Nom
        (type STRING)
        (create-accessor read-write))
)

(definstances instances
    ([Abdomen] of Musculs
    )

    ([Abdominals_Tisora_x10] of De_Terra
         (complementa_Exerc  [Dominades_en_Pronacio_x5] [Elevacio_de_Cames_x10])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "8")
    )

    ([Baixar_Pes] of Objectius
    )

    ([Bicicleta] of Amb_Aparells
         (complementa_Exerc  [Crunches_x10] [Esquats_x10] [Flexions_al_Pla_x10])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Tors])
         (DuracioMax  "40")
         (DuracioMin  "20")
         (RepsMax  "1")
         (RepsMin  "1")
         (kcal/min  "7")
    )

    ([Bracos] of Musculs
    )

    ([Cames] of Musculs
    )

    ([Cinta] of Amb_Aparells
         (complementa_Exerc  [Elevacio_de_Bessons] [Esquats_x10])
         (serveix_Obj  [Baixar_Pes] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  "30")
         (DuracioMin  "5")
         (RepsMax  "1")
         (RepsMin  "1")
         (kcal/min  "9")
    )

    ([Crunches_x10] of De_Terra
         (complementa_Exerc  [Bicicleta] [Elevacio_de_Cames_x10] [Estirament_Abdominal])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Cames])
         (DuracioMax  "1")
         (DuracioMin  "10")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "7")
    )

    ([Curl_de_Biceps] of Amb_Peses
         (complementa_Exerc  [Estirament_de_Biceps] [Lat_Pulldown] [Planxa])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "4")
    )

    ([Curl_de_Biceps_Femoral] of Amb_Peses
         (complementa_Exerc  [Elevacio_de_Quadriceps] [Estirament_de_Biceps_Femoral] [Press_de_Cames])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "4")
    )

    ([Dominades_Australianes_x10] of Sense_Peses
         (complementa_Exerc  [Estirament_de_Dorsals] [Flexions_al_Pla_x10] [Lat_Pulldown])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Esquena] [Tors])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "6")
    )

    ([Dominades_en_Pronacio_x5] of Sense_Peses
         (complementa_Exerc  [Abdominals_Tisora_x10] [Dominades_en_Supinacio_x5] [Estirament_de_Triceps])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Esquena] [Tors])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "8")
    )

    ([Dominades_en_Supinacio_x5] of Sense_Peses
         (complementa_Exerc  [Dominades_en_Pronacio_x5] [Estirament_de_Triceps] [Twists_Russos_x10])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Esquena] [Tors])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "8")
    )

    ([Elevacio_Lateral] of Amb_Peses
         (complementa_Exerc  [Flexions_al_Pla_x10] [Natacio] [Press_de_Banca])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "4")
    )

    ([Elevacio_de_Bessons] of Amb_Peses
         (complementa_Exerc  [Cinta] [Eliptica] [Postura_de_Arbre])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "4")
    )

    ([Elevacio_de_Cames_x10] of De_Terra
         (complementa_Exerc  [Abdominals_Tisora_x10] [Estirament_Abdominal])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Cames])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "5")
    )

    ([Elevacio_de_Quadriceps] of Amb_Peses
         (complementa_Exerc  [Curl_de_Biceps_Femoral] [Estirament_de_Quadriceps])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "4")
    )

    ([Eliptica] of Amb_Aparells
         (complementa_Exerc  [Elevacio_de_Bessons] [Saltar_a_la_Corda])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  "30")
         (DuracioMin  "10")
         (RepsMax  "1")
         (RepsMin  "1")
         (kcal/min  "8")
    )

    ([Equilibri] of Objectius
    )

    ([Esquats_Bulgars_x10] of Sense_Peses
         (complementa_Exerc  [Esquats_x10] [Penjar-se_en_Barra])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames] [Esquena])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "6")
    )

    ([Esquats_x10] of Sense_Peses
         (complementa_Exerc  [Bicicleta] [Cinta] [Natacio])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames] [Esquena])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "5")
    )

    ([Esquena] of Musculs
    )

    ([Estirament_Abdominal] of Estiraments
         (complementa_Exerc  [Crunches_x10] [Elevacio_de_Cames_x10] [Saltar_a_la_Corda])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "0")
    )

    ([Estirament_de_Bessons] of Estiraments
         (complementa_Exerc  [Elevacio_de_Bessons] [Estirament_de_Biceps_Femoral])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "0")
    )

    ([Estirament_de_Biceps] of Estiraments
         (complementa_Exerc  [Curl_de_Biceps] [Estirament_de_Triceps])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "0")
    )

    ([Estirament_de_Biceps_Femoral] of Estiraments
         (complementa_Exerc  [Curl_de_Biceps_Femoral] [Estirament_de_Bessons] [Estirament_de_Quadriceps])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  "10")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "0")
    )

    ([Estirament_de_Deltoides] of Estiraments
         (complementa_Exerc  [Estirament_de_Dorsals])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Esquena])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "0")
    )

    ([Estirament_de_Dorsals] of Estiraments
         (complementa_Exerc  [Dominades_Australianes_x10] [Estirament_de_Deltoides])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Esquena])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "0")
    )

    ([Estirament_de_Pectorals] of Estiraments
         (complementa_Exerc  [Flexions_amb_Inclinacio_Negativa_x10] [Flexions_amb_Inclinacio_x10])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Tors])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "0")
    )

    ([Estirament_de_Quadriceps] of Estiraments
         (complementa_Exerc  [Elevacio_de_Quadriceps] [Estirament_de_Quadriceps])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "0")
    )

    ([Estirament_de_Triceps] of Estiraments
         (complementa_Exerc  [Dominades_en_Pronacio_x5] [Estirament_de_Biceps])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "0")
    )

    ([Flexibilitat] of Objectius
    )

    ([Flexions_al_Pla_x10] of De_Terra
         (complementa_Exerc  [Bicicleta] [Dominades_Australianes_x10] [Elevacio_Lateral])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Tors])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "8")
    )

    ([Flexions_amb_Inclinacio_Negativa_x10] of De_Terra
         (complementa_Exerc  [Estirament_de_Pectorals] [Flexions_amb_Inclinacio_x10] [Press_de_Banca_Inclinat])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Tors])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "10")
    )

    ([Flexions_amb_Inclinacio_x10] of De_Terra
         (complementa_Exerc  [Estirament_de_Pectorals] [Flexions_amb_Inclinacio_Negativa_x10] [Natacio])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Tors])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "6")
    )

    ([Lat_Pulldown] of Amb_Peses
         (complementa_Exerc  [Curl_de_Biceps] [Dominades_Australianes_x10] [Rem])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Esquena] [Tors])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "4")
    )

    ([Manteniment] of Objectius
    )

    ([Musculacio] of Objectius
    )

    ([Natacio] of Amb_Aparells
         (complementa_Exerc  [Elevacio_Lateral] [Esquats_x10] [Flexions_amb_Inclinacio_x10])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena] [Tors])
         (DuracioMax  "60")
         (DuracioMin  "20")
         (RepsMax  "1")
         (RepsMin  "1")
         (kcal/min  "11")
    )

    ([Penjar-se_en_Barra] of Sense_Peses
         (complementa_Exerc  [Esquats_Bulgars_x10] [Press_de_Banca] [Salts_Aerobics])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Esquena] [Tors])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "2")
    )

    ([Planxa] of De_Terra
         (complementa_Exerc  [Curl_de_Biceps] [Elevacio_de_Cames_x10] [Twists_Russos_x10])
         (serveix_Obj  [Equilibri] [Manteniment] [Musculacio])
         (treballa_Musc  [Abdomen] [Bracos])
         (DuracioMax  "2")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "3")
    )

    ([Planxa_Lateral] of De_Terra
         (complementa_Exerc  [Postura_de_la_Mitja_Lluna] [Press_de_Banca_Inclinat] [Twists_Russos_x10])
         (serveix_Obj  [Equilibri] [Manteniment] [Musculacio])
         (treballa_Musc  [Abdomen] [Bracos])
         (DuracioMax  "2")
         (DuracioMin  "1")
         (RepsMax  "4")
         (RepsMin  "2")
         (kcal/min  "3")
    )

    ([Posar-se_en_Forma] of Objectius
    )

    ([Postura_de_Aguila] of Equilibris
         (complementa_Exerc  [Postura_de_Arbre] [Postura_de_la_Muntanya] [Postura_del_Ballari])
         (serveix_Obj  [Equilibri] [Flexibilitat])
         (treballa_Musc  [Bracos] [Cames] [Esquena])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "4")
         (RepsMin  "2")
         (kcal/min  "0")
    )

    ([Postura_de_Arbre] of Equilibris
         (complementa_Exerc  [Elevacio_de_Bessons] [Postura_de_Aguila] [Postura_del_Corb])
         (serveix_Obj  [Equilibri])
         (treballa_Musc  [Bracos] [Cames] [Esquena])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "4")
         (RepsMin  "2")
         (kcal/min  "0")
    )

    ([Postura_de_la_Mitja_Lluna] of Equilibris
         (complementa_Exerc  [Planxa_Lateral] [Postura_de_la_Muntanya] [Postura_del_Pao])
         (serveix_Obj  [Equilibri])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "4")
         (RepsMin  "2")
         (kcal/min  "0")
    )

    ([Postura_de_la_Muntanya] of Equilibris
         (complementa_Exerc  [Postura_de_Aguila] [Postura_de_la_Mitja_Lluna])
         (serveix_Obj  [Equilibri] [Flexibilitat])
         (treballa_Musc  [Bracos] [Esquena] [Tors])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "4")
         (RepsMin  "2")
         (kcal/min  "0")
    )

    ([Postura_del_Ballari] of Equilibris
         (complementa_Exerc  [Postura_de_Aguila] [Postura_del_Corb] [Postura_del_Guerrer_I])
         (serveix_Obj  [Equilibri] [Flexibilitat])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena] [Tors])
         (DuracioMax  "5")
         (RepsMax  "4")
         (RepsMin  "2")
         (kcal/min  "0")
    )

    ([Postura_del_Corb] of Equilibris
         (complementa_Exerc  [Postura_de_Arbre] [Postura_del_Ballari] [Postura_del_Pao])
         (serveix_Obj  [Equilibri] [Flexibilitat])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "4")
         (RepsMin  "2")
         (kcal/min  "0")
    )

    ([Postura_del_Guerrer_I] of Equilibris
         (complementa_Exerc  [Postura_del_Ballari] [Postura_del_Pao])
         (serveix_Obj  [Equilibri] [Flexibilitat])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena] [Tors])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "4")
         (RepsMin  "2")
         (kcal/min  "0")
    )

    ([Postura_del_Pao] of Equilibris
         (complementa_Exerc  [Postura_de_la_Mitja_Lluna] [Postura_del_Corb] [Postura_del_Guerrer_I])
         (serveix_Obj  [Equilibri])
         (treballa_Musc  [Bracos] [Cames] [Esquena])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "4")
         (RepsMin  "2")
         (kcal/min  "0")
    )

    ([Press_de_Banca] of Amb_Peses
         (complementa_Exerc  [Elevacio_Lateral] [Penjar-se_en_Barra] [Press_de_Banca_Inclinat])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Tors])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "4")
    )

    ([Press_de_Banca_Inclinat] of Amb_Peses
         (complementa_Exerc  [Flexions_amb_Inclinacio_Negativa_x10] [Planxa_Lateral] [Press_de_Banca])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Tors])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "4")
    )

    ([Press_de_Cames] of Amb_Peses
         (complementa_Exerc  [Curl_de_Biceps_Femoral] [Rem])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "5")
    )

    ([Rem] of Amb_Aparells
         (complementa_Exerc  [Lat_Pulldown] [Press_de_Cames] [Salts_Aerobics])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena] [Tors])
         (DuracioMax  "20")
         (DuracioMin  "5")
         (RepsMax  "1")
         (RepsMin  "1")
         (kcal/min  "12")
    )

    ([Saltar_a_la_Corda] of Sense_Peses
         (complementa_Exerc  [Eliptica] [Estirament_Abdominal] [Salts_Aerobics])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Cames])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "11")
    )

    ([Salts_Aerobics] of Sense_Peses
         (complementa_Exerc  [Penjar-se_en_Barra] [Rem] [Saltar_a_la_Corda])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena])
         (DuracioMax  "5")
         (DuracioMin  "1")
         (RepsMax  "5")
         (RepsMin  "1")
         (kcal/min  "10")
    )

    ([Tors] of Musculs
    )

    ([Twists_Russos_x10] of De_Terra
         (complementa_Exerc  [Dominades_en_Supinacio_x5] [Planxa] [Planxa_Lateral])
         (serveix_Obj  [Manteniment] [Musculacio])
         (treballa_Musc  [Abdomen])
         (DuracioMax  "1")
         (DuracioMin  "1")
         (RepsMax  "10")
         (RepsMin  "1")
         (kcal/min  "7")
    )

)
