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
        (type INTEGER)
        (create-accessor read-write))
    (slot DuracioMin
        (type INTEGER)
        (create-accessor read-write))
    (slot Nom
        (type STRING)
        (create-accessor read-write))
    (slot RepsMax
        (type INTEGER)
        (create-accessor read-write))
    (slot RepsMin
        (type INTEGER)
        (create-accessor read-write))
    (slot kcal/min
        (type INTEGER)
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
        (type INTEGER)
        (create-accessor read-write))
    (slot Frequencia
        (type INTEGER)
        (create-accessor read-write))
)

(defclass LLeure
    (is-a Habits_Personals)
    (role concrete)
    (pattern-match reactive)
)

(defclass Desplacament
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
        (type INTEGER)
        (create-accessor read-write))
    (slot Edat
        (type INTEGER)
        (create-accessor read-write))
    (slot IMC
        (type FLOAT)
        (create-accessor read-write))
    (slot Pes
        (type INTEGER)
        (create-accessor read-write))
    (slot psMax
        (type INTEGER)
        (create-accessor read-write))
    (slot psMin
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Parametres_Adicionals
    (is-a Condicio_Fisica)
    (role concrete)
    (pattern-match reactive)
    (slot Cansanci
        (type INTEGER)
        (create-accessor read-write))
    (slot Fatiga_Muscular
        (type INTEGER)
        (create-accessor read-write))
    (slot Mareig
        (type INTEGER)
        (create-accessor read-write))
    (slot bpm
        (type INTEGER)
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
    (Abdomen of Musculs)

    (Abdominals_Tisora_x10 of De_Terra
         (complementa_Exerc  [Dominades_en_Pronacio_x5] [Elevacio_de_Cames_x10])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  8)
    )

    (Baixar_Pes of Objectius)

    (Bicicleta of Amb_Aparells
         (complementa_Exerc  [Crunches_x10] [Esquats_x10] [Flexions_al_Pla_x10])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Tors])
         (DuracioMax  40)
         (DuracioMin  20)
         (RepsMax  1)
         (RepsMin  1)
         (kcal/min  7)
    )

    (Bracos of Musculs)

    (Cames of Musculs)

    (Cinta of Amb_Aparells
         (complementa_Exerc  [Elevacio_de_Bessons] [Esquats_x10])
         (serveix_Obj  [Baixar_Pes] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  30)
         (DuracioMin  5)
         (RepsMax  1)
         (RepsMin  1)
         (kcal/min  9)
    )

    (Crunches_x10 of De_Terra
         (complementa_Exerc  [Bicicleta] [Elevacio_de_Cames_x10] [Estirament_Abdominal])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Cames])
         (DuracioMax  1)
         (DuracioMin  10)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  7)
    )

    (Curl_de_Biceps of Amb_Peses
         (complementa_Exerc  [Estirament_de_Biceps] [Lat_Pulldown] [Planxa])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  4)
    )

    (Curl_de_Biceps_Femoral of Amb_Peses
         (complementa_Exerc  [Elevacio_de_Quadriceps] [Estirament_de_Biceps_Femoral] [Press_de_Cames])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  4)
    )

    (Dominades_Australianes_x10 of Sense_Peses
         (complementa_Exerc  [Estirament_de_Dorsals] [Flexions_al_Pla_x10] [Lat_Pulldown])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Esquena] [Tors])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  6)
    )

    (Dominades_en_Pronacio_x5 of Sense_Peses
         (complementa_Exerc  [Abdominals_Tisora_x10] [Dominades_en_Supinacio_x5] [Estirament_de_Triceps])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Esquena] [Tors])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  8)
    )

    (Dominades_en_Supinacio_x5 of Sense_Peses
         (complementa_Exerc  [Dominades_en_Pronacio_x5] [Estirament_de_Triceps] [Twists_Russos_x10])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Esquena] [Tors])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  8)
    )

    (Elevacio_Lateral of Amb_Peses
         (complementa_Exerc  [Flexions_al_Pla_x10] [Natacio] [Press_de_Banca])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  4)
    )

    (Elevacio_de_Bessons of Amb_Peses
         (complementa_Exerc  [Cinta] [Eliptica] [Postura_de_Arbre])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  4)
    )

    (Elevacio_de_Cames_x10 of De_Terra
         (complementa_Exerc  [Abdominals_Tisora_x10] [Estirament_Abdominal])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Cames])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  5)
    )

    (Elevacio_de_Quadriceps of Amb_Peses
         (complementa_Exerc  [Curl_de_Biceps_Femoral] [Estirament_de_Quadriceps])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  4)
    )

    (Eliptica of Amb_Aparells
         (complementa_Exerc  [Elevacio_de_Bessons] [Saltar_a_la_Corda])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  30)
         (DuracioMin  10)
         (RepsMax  1)
         (RepsMin  1)
         (kcal/min  8)
    )

    (Equilibri of Objectius)

    (Esquats_Bulgars_x10 of Sense_Peses
         (complementa_Exerc  [Esquats_x10] [Penjar-se_en_Barra])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames] [Esquena])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  6)
    )

    (Esquats_x10 of Sense_Peses
         (complementa_Exerc  [Bicicleta] [Cinta] [Natacio])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames] [Esquena])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  5)
    )

    (Esquena of Musculs)

    (Estirament_Abdominal of Estiraments
         (complementa_Exerc  [Crunches_x10] [Elevacio_de_Cames_x10] [Saltar_a_la_Corda])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  0)
    )

    (Estirament_de_Bessons of Estiraments
         (complementa_Exerc  [Elevacio_de_Bessons] [Estirament_de_Biceps_Femoral])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  0)
    )

    (Estirament_de_Biceps of Estiraments
         (complementa_Exerc  [Curl_de_Biceps] [Estirament_de_Triceps])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  0)
    )

    (Estirament_de_Biceps_Femoral of Estiraments
         (complementa_Exerc  [Curl_de_Biceps_Femoral] [Estirament_de_Bessons] [Estirament_de_Quadriceps])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  10)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  0)
    )

    (Estirament_de_Deltoides of Estiraments
         (complementa_Exerc  [Estirament_de_Dorsals])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Esquena])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  0)
    )

    (Estirament_de_Dorsals of Estiraments
         (complementa_Exerc  [Dominades_Australianes_x10] [Estirament_de_Deltoides])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Esquena])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  0)
    )

    (Estirament_de_Pectorals of Estiraments
         (complementa_Exerc  [Flexions_amb_Inclinacio_Negativa_x10] [Flexions_amb_Inclinacio_x10])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Tors])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  0)
    )

    (Estirament_de_Quadriceps of Estiraments
         (complementa_Exerc  [Elevacio_de_Quadriceps] [Estirament_de_Quadriceps])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  0)
    )

    (Estirament_de_Triceps of Estiraments
         (complementa_Exerc  [Dominades_en_Pronacio_x5] [Estirament_de_Biceps])
         (serveix_Obj  [Flexibilitat] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  0)
    )

    (Flexibilitat of Objectius)

    (Flexions_al_Pla_x10 of De_Terra
         (complementa_Exerc  [Bicicleta] [Dominades_Australianes_x10] [Elevacio_Lateral])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Tors])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  8)
    )

    (Flexions_amb_Inclinacio_Negativa_x10 of De_Terra
         (complementa_Exerc  [Estirament_de_Pectorals] [Flexions_amb_Inclinacio_x10] [Press_de_Banca_Inclinat])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Tors])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  10)
    )

    (Flexions_amb_Inclinacio_x10 of De_Terra
         (complementa_Exerc  [Estirament_de_Pectorals] [Flexions_amb_Inclinacio_Negativa_x10] [Natacio])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Tors])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  6)
    )

    (Lat_Pulldown of Amb_Peses
         (complementa_Exerc  [Curl_de_Biceps] [Dominades_Australianes_x10] [Rem])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Esquena] [Tors])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  4)
    )

    (Manteniment of Objectius)

    (Musculacio of Objectius)

    (Natacio of Amb_Aparells
         (complementa_Exerc  [Elevacio_Lateral] [Esquats_x10] [Flexions_amb_Inclinacio_x10])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena] [Tors])
         (DuracioMax  60)
         (DuracioMin  20)
         (RepsMax  1)
         (RepsMin  1)
         (kcal/min  11)
    )

    (Penjar-se_en_Barra of Sense_Peses
         (complementa_Exerc  [Esquats_Bulgars_x10] [Press_de_Banca] [Salts_Aerobics])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Esquena] [Tors])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  2)
    )

    (Planxa of De_Terra
         (complementa_Exerc  [Curl_de_Biceps] [Elevacio_de_Cames_x10] [Twists_Russos_x10])
         (serveix_Obj  [Equilibri] [Manteniment] [Musculacio])
         (treballa_Musc  [Abdomen] [Bracos])
         (DuracioMax  2)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  3)
    )

    (Planxa_Lateral of De_Terra
         (complementa_Exerc  [Postura_de_la_Mitja_Lluna] [Press_de_Banca_Inclinat] [Twists_Russos_x10])
         (serveix_Obj  [Equilibri] [Manteniment] [Musculacio])
         (treballa_Musc  [Abdomen] [Bracos])
         (DuracioMax  2)
         (DuracioMin  1)
         (RepsMax  4)
         (RepsMin  2)
         (kcal/min  3)
    )

    (Posar-se_en_Forma of Objectius)

    (Postura_de_Aguila of Equilibris
         (complementa_Exerc  [Postura_de_Arbre] [Postura_de_la_Muntanya] [Postura_del_Ballari])
         (serveix_Obj  [Equilibri] [Flexibilitat])
         (treballa_Musc  [Bracos] [Cames] [Esquena])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  4)
         (RepsMin  2)
         (kcal/min  0)
    )

    (Postura_de_Arbre of Equilibris
         (complementa_Exerc  [Elevacio_de_Bessons] [Postura_de_Aguila] [Postura_del_Corb])
         (serveix_Obj  [Equilibri])
         (treballa_Musc  [Bracos] [Cames] [Esquena])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  4)
         (RepsMin  2)
         (kcal/min  0)
    )

    (Postura_de_la_Mitja_Lluna of Equilibris
         (complementa_Exerc  [Planxa_Lateral] [Postura_de_la_Muntanya] [Postura_del_Pao])
         (serveix_Obj  [Equilibri])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  4)
         (RepsMin  2)
         (kcal/min  0)
    )

    (Postura_de_la_Muntanya of Equilibris
         (complementa_Exerc  [Postura_de_Aguila] [Postura_de_la_Mitja_Lluna])
         (serveix_Obj  [Equilibri] [Flexibilitat])
         (treballa_Musc  [Bracos] [Esquena] [Tors])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  4)
         (RepsMin  2)
         (kcal/min  0)
    )

    (Postura_del_Ballari of Equilibris
         (complementa_Exerc  [Postura_de_Aguila] [Postura_del_Corb] [Postura_del_Guerrer_I])
         (serveix_Obj  [Equilibri] [Flexibilitat])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena] [Tors])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  4)
         (RepsMin  2)
         (kcal/min  0)
    )

    (Postura_del_Corb of Equilibris
         (complementa_Exerc  [Postura_de_Arbre] [Postura_del_Ballari] [Postura_del_Pao])
         (serveix_Obj  [Equilibri] [Flexibilitat])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  4)
         (RepsMin  2)
         (kcal/min  0)
    )

    (Postura_del_Guerrer_I of Equilibris
         (complementa_Exerc  [Postura_del_Ballari] [Postura_del_Pao])
         (serveix_Obj  [Equilibri] [Flexibilitat])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena] [Tors])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  4)
         (RepsMin  2)
         (kcal/min  0)
    )

    (Postura_del_Pao of Equilibris
         (complementa_Exerc  [Postura_de_la_Mitja_Lluna] [Postura_del_Corb] [Postura_del_Guerrer_I])
         (serveix_Obj  [Equilibri])
         (treballa_Musc  [Bracos] [Cames] [Esquena])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  4)
         (RepsMin  2)
         (kcal/min  0)
    )

    (Press_de_Banca of Amb_Peses
         (complementa_Exerc  [Elevacio_Lateral] [Penjar-se_en_Barra] [Press_de_Banca_Inclinat])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Tors])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  4)
    )

    (Press_de_Banca_Inclinat of Amb_Peses
         (complementa_Exerc  [Flexions_amb_Inclinacio_Negativa_x10] [Planxa_Lateral] [Press_de_Banca])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Bracos] [Tors])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  4)
    )

    (Press_de_Cames of Amb_Peses
         (complementa_Exerc  [Curl_de_Biceps_Femoral] [Rem])
         (serveix_Obj  [Manteniment] [Musculacio] [Posar-se_en_Forma])
         (treballa_Musc  [Cames])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  5)
    )

    (Rem of Amb_Aparells
         (complementa_Exerc  [Lat_Pulldown] [Press_de_Cames] [Salts_Aerobics])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena] [Tors])
         (DuracioMax  20)
         (DuracioMin  5)
         (RepsMax  1)
         (RepsMin  1)
         (kcal/min  12)
    )

    (Saltar_a_la_Corda of Sense_Peses
         (complementa_Exerc  [Eliptica] [Estirament_Abdominal] [Salts_Aerobics])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Cames])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  11)
    )

    (Salts_Aerobics of Sense_Peses
         (complementa_Exerc  [Penjar-se_en_Barra] [Rem] [Saltar_a_la_Corda])
         (serveix_Obj  [Baixar_Pes] [Manteniment] [Posar-se_en_Forma])
         (treballa_Musc  [Abdomen] [Bracos] [Cames] [Esquena])
         (DuracioMax  5)
         (DuracioMin  1)
         (RepsMax  5)
         (RepsMin  1)
         (kcal/min  10)
    )

    (Tors of Musculs)

    (Twists_Russos_x10 of De_Terra
         (complementa_Exerc  [Dominades_en_Supinacio_x5] [Planxa] [Planxa_Lateral])
         (serveix_Obj  [Manteniment] [Musculacio])
         (treballa_Musc  [Abdomen])
         (DuracioMax  1)
         (DuracioMin  1)
         (RepsMax  10)
         (RepsMin  1)
         (kcal/min  7)
    )
)

;;; #########################################
;;; ######### DECLARACIO DE MODULS ##########
;;; #########################################


    (defglobal ?*llista-exercicis* = (create$ ))

    (defmodule MAIN (export ?ALL))
    
    (defmodule preguntes
	(import MAIN ?ALL)
	(export ?ALL)
    )

    (defmodule recomanacions 
    (import preguntes ?ALL)
    (import MAIN ?ALL) 
    (export ?ALL)
    )

    (defmodule imprimir
    (import recomanacions ?ALL)
    (import preguntes ?ALL) 
    (import MAIN ?ALL) 
    (export ?ALL)
    )


;;; #########################################
;;; ####### DECLARACIO DE TEMPLATES #########
;;; #########################################

    (deftemplate MAIN::lector_data
	(slot edat (type INTEGER)(default -1)) ;edat de la persona
        (slot pes (type INTEGER)(default -1)) ;pes de la persona
	(slot alcada (type INTEGER)(default -1)) ;alçada de la persona
 	(slot imc (type FLOAT)(default -1.0)) ;imc de la persona
	(slot psMax (type INTEGER)(default -1)) ;presió sanguinea màxima de la persona
	(slot psMin (type INTEGER)(default -1)) ;presió sanguinea mínima de la persona
	(slot parAd (type STRING)(default "FALSE")) ;informació sobre si la persona vol calcular paràmetres adicionals
	(slot bpm (type INTEGER)(default -1)) ;polsacions per minut de la persona
	(slot cansanci (type STRING)(default "NO")) ;sensació de cansanci de la persona
	(slot mareig (type STRING)(default "NO")) ;sensació de mareig de la persona
	(slot fatiga (type STRING)(default "NO")) ;sensació de fatiga muscular de la persona
	(slot objectiu (type STRING)(default "null")) ;objectiu de la persona
	(slot gMusc (type STRING)(default "null")) ;grup muscular de la persona en cas que l'objectiu sigui musculacio
	(slot temps (type INTEGER)(default 0)) ;temps d'entrenament per dia de la persona
	(slot intensitat (type INTEGER) (default 5)) ;intensitat dels exercicis de la persona
	(slot salut (type STRING)(default "null")) ;informa sobre si la salut de la persona està bé
	(slot lesio (type STRING)(default "ok")) ;informa sobre si la persona te lesions
	(slot dieta (type STRING)(default "ok")) ;informa sobre si la persona te problemes amb la dieta
	(slot habit (type STRING)) ;informa sobre quins habits tindrà la persona
	(slot laboral (type STRING)(default "null")) ;informa sobre quins habits laborals tindrà la persona
	(slot fLaboralW (type INTEGER)(default -1)) ;informa sobre la freqüència de l'hàbit laboral per setmana
	(slot fLaboralD (type INTEGER)(default -1)) ;informa sobre la duració de l'hàbit laboral per dia
	(slot estatic (type STRING)(default "null")) ;informa sobre quins habits estàtics tindrà la persona
	(slot fEstaticW (type INTEGER)(default -1)) ;informa sobre la freqüència dels habits estatics per setmana
	(slot fEstaticD (type INTEGER)(default -1)) ;informa sobre la duració dels habits estatics per dia
	(slot domestic (type STRING)(default "null")) ;informa sobre quins habits domèstics tindrà la persona
	(slot fDomesticW (type INTEGER)(default -1)) ;informa sobre la freqüència dels habits domèstics per setmana
	(slot fDomesticD (type INTEGER)(default -1)) ;informa sobre la duració dels habits domèstics per dia
	(slot desplacament (type STRING)(default "null")) ;informa sobre quins desplaçaments fa la persona
	(slot fDesplacamentW (type INTEGER)(default -1)) ;informa sobre la freqüència de l'hàbit de desplaçament per setmana
	(slot fDesplacamentD (type INTEGER)(default -1)) ;informa sobre la duracio de l'hàbit de desplaçament per dia
	
    )



(defrule MAIN::initialRule "Regla inicial"
	(declare (salience 10))
	=>
  	(printout t"         I'M NO COUCH POTATO t'arregla la vida         " crlf)
	(printout t"----------------------------------------------------------" crlf)
  	(printout t crlf)
	(printout t"Benvolgut client, respongui les preguntes i li generem un programa d'entrenament setmanal." crlf)
	(printout t crlf)
	(assert (lector_data))
	(assert (instances-loaded TRUE))
	(focus imprimir)
	(focus recomanacions)
	(focus preguntes)
)

;;;Condició Física

    (defrule preguntes::obtenir-edat "Pregunta la edat de la persona"
	?g <- (lector_data(edat ?edat))
	(test (< ?edat 0))
	=>
	(printout t "Quina és la seva edat?" crlf)
    	(bind ?num (read))
    	(while (not(and (>= ?num 16) (<= ?num 100))) do 
    		(printout t "Sisplau, respongui entre els rangs de 16 i 100. Quina és la seva edat?" crlf)
    		(bind ?num (read))
    	)
    	(modify ?g (edat ?num))
    )

    (defrule preguntes::obtenir-pes "Obté el pes de la pesona"
	?g <- (lector_data(pes ?pes))
	(test (< ?pes 0))
	=>
	(printout t "Quin és el seu pes?" crlf)
    	(bind ?num (read))
    	(while (not(and (>= ?num 40) (<= ?num 150))) do 
    		(printout t "Sisplau, respongui entre els rangs de 40 i 150. Quin és el seu pes?" crlf)
    		(bind ?num (read))
    	)
    	(modify ?g (pes ?num))
    )

    (defrule preguntes::obtenir-alcada "Obté l'alçada de la pesona"
	?g <- (lector_data(alcada ?alcada))
	(test (< ?alcada 0))
	=>
	(printout t "Quina és la seva alçada?" crlf)
    	(bind ?num (read))
    	(while (not(and (>= ?num 140) (<= ?num 230))) do 
    		(printout t "Sisplau, respongui entre els rangs de 140 i 230. Quina és la seva alçada?" crlf)
    		(bind ?num (read))
    	)
    	(modify ?g (alcada ?num))
    )

(defrule preguntes::calcular-imc "Calcula el IMC de la persona"
    ?g <- (lector_data (pes ?pes) (alcada ?alcada) (imc ?imc))
    (test (and (> ?pes 0) (> ?alcada 0) (< ?imc 0)))
    =>
    (bind ?alcada-meters (/ ?alcada 100.0)) ; Convert height to meters
    (bind ?imc (/ ?pes (* ?alcada-meters ?alcada-meters))) ; Calculate IMC
    (modify ?g (imc ?imc))
    (printout t "El seu IMC és " ?imc crlf)
)

    (defrule preguntes::obtenir-psMax "Obté la presió màxima de la pesona"
	?g <- (lector_data(psMax ?psMax))
	(test (< ?psMax 0))
	=>
	(printout t "Quin és la seva presió sanguinea màxima?" crlf)
    	(bind ?num (read))
    	(while (not(and (>= ?num 100) (<= ?num 150))) do 
    		(printout t "Sisplau, respongui entre els rangs de 100 i 150. Quina és la seva sanguinea màxima?" crlf)
    		(bind ?num (read))
    	)
    	(modify ?g (psMax ?num))
    )

    (defrule preguntes::obtenir-psMin "Obté la presió mínima de la pesona"
	?g <- (lector_data(psMin ?psMin))
	(test (< ?psMin 0))
	=>
	(printout t "Quin és la seva presió sanguinea mínima?" crlf)
    	(bind ?num (read))
    	(while (not(and (>= ?num 50) (<= ?num 90))) do 
    		(printout t "Sisplau, respongui entre els rangs de 50 i 90. Quina és la seva sanguinea mínima?" crlf)
    		(bind ?num (read))
    	)
    	(modify ?g (psMin ?num))
    )

    (defrule preguntes::obtenir-parAd "Obté si la persona vol fer una prova física per donar informaciò adicional sobre la seva condició física"
   	?g <- (lector_data (parAd "FALSE"))
   	=>
   	(printout t "Vol fer una prova física adicional per ampliar la informació sobre la seva condició física? (SI/NO)" crlf)
    	(bind ?text (read))
    	(if (or (eq (str-compare ?text "SI") 0) 
       	    	(eq (str-compare ?text "Si") 0) 
           	(eq (str-compare ?text "si") 0)) then
       		(modify ?g (parAd "TRUE"))
       	 	(printout t "Ha decidit proporcionar informació adicional sobre la seva condició física." crlf)
		(printout t crlf)
    	else
		(modify ?g (parAd "null"))
        	(printout t "Ha decidit no proporcionar informació adicional sobre la seva condició física." crlf)
		(printout t crlf)
    	)
    )

    (defrule preguntes::obtenir-bpm "Obté les polsacions per minut de la persona"
   	?g <- (lector_data (parAd "TRUE"))
   	=>
   	(printout t "Enhorabona per realitzar la prova física extra!" crlf)
	(printout t "Quines han estat les seves polsacions per minut" crlf)
    	(bind ?num (read))
    	(while (not(and (>= ?num 100) (<= ?num 150))) do 
    		(printout t "Sisplau, respongui entre els rangs de 100 i 150. Quines han estat les seves polsacions per minut?" crlf)
    		(bind ?num (read))
    	)
    	(modify ?g (bpm ?num))
	(modify ?g (parAd "true"))
	
    )

    (defrule preguntes::obtenir-cansanci "Obté si la persona està cansada"
   	?g <- (lector_data (parAd "true"))
   	=>
	(printout t "Es nota cansat desprès de fer la prova?" crlf)
    	(bind ?text (read))
    	(if (or (eq (str-compare ?text "SI") 0) 
       	    	(eq (str-compare ?text "Si") 0) 
           	(eq (str-compare ?text "si") 0)) then
       		(modify ?g (cansanci "SI"))
	)
	(modify ?g (parAd "True"))
    )

    (defrule preguntes::obtenir-mareig "Obté si la persona està marejada"
   	?g <- (lector_data (parAd "True"))
   	=>
	(printout t "Es nota marejat desprès de fer la prova?" crlf)
    	(bind ?text (read))
    	(if (or (eq (str-compare ?text "SI") 0) 
       	    	(eq (str-compare ?text "Si") 0) 
           	(eq (str-compare ?text "si") 0)) then
       		(modify ?g (mareig "SI"))

	)
	(modify ?g (parAd "CERT"))
    )

    (defrule preguntes::obtenir-fatiga "Obté si la persona està fatigada muscularment"
   	?g <- (lector_data (parAd "CERT"))
   	=>
	(printout t "Es nota fatiga muscular desprès de fer la prova?" crlf)
    	(bind ?text (read))
    	(if (or (eq (str-compare ?text "SI") 0) 
       	    	(eq (str-compare ?text "Si") 0) 
           	(eq (str-compare ?text "si") 0)) then
       		(modify ?g (fatiga "SI"))
	)
	(modify ?g (parAd "cert"))
    )

;;;Objectius

(defrule preguntes::obtenir-objectiu "Obté l'objectiu de la persona"
    ?g <- (lector_data (objectiu "null"))
    =>
    (printout t "Seleccioni el seu objectiu" crlf)
    (printout t "1- Manteniment" crlf)
    (printout t "2- Posar-se en forma" crlf)
    (printout t "3- Baixar de pes" crlf)
    (printout t "4- Flexibilitat" crlf)
    (printout t "5- Equilibri" crlf)
    (printout t "6- Musculació" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 6))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 6. Seleccioni el seu objectiu" crlf)
        (bind ?num (read))
    )
    (switch ?num
        (case 1 then (modify ?g (objectiu "Manteniment")(temps -1)))
        (case 2 then (modify ?g (objectiu "Posar-se_en_Forma")(temps -1)))
        (case 3 then (modify ?g (objectiu "Baixar_Pes")(temps -1)))
        (case 4 then (modify ?g (objectiu "Flexibilitat")(temps -1)))
        (case 5 then (modify ?g (objectiu "Equilibri")(temps -1)))
        (case 6 then (modify ?g (objectiu "Musculacio")))
        (default (printout t "Opció no vàlida." crlf))
    )

)

    (defrule preguntes::obtenir-gMusc "Obté el grup muscular que vol treballar la persona, si es que aquesta ha escollit Musculació"
    ?g <- (lector_data (objectiu "Musculacio") (gMusc "null"))
    =>
    (printout t "Ha triat l'objectiu de Musculació. En quin grup voldria enfocar-se?" crlf)
    (printout t "1- Abdomen" crlf)
    (printout t "2- Braços" crlf)
    (printout t "3- Cames" crlf)
    (printout t "4- Esquena" crlf)
    (printout t "5- Tors" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 5))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 5. Seleccioni el seu grup muscular a treballar" crlf)
        (bind ?num (read))
    )
    (switch ?num
        (case 1 then (modify ?g (gMusc "Abdomen")))
        (case 2 then (modify ?g (gMusc "Bracos")))
        (case 3 then (modify ?g (gMusc "Cames")))
        (case 4 then (modify ?g (gMusc "Esquena")))
        (case 5 then (modify ?g (gMusc "Tors")))
        (default (printout t "Opció no vàlida." crlf))
    )
	(modify ?g (temps -1))
    )

(defrule preguntes::obtenir-temps "Obté el temps de la rutina d'entrenament que vol dedicar-hi la persona"
	?g <- (lector_data(temps ?temps))
	(test (< ?temps 0))
	=>    
    (printout t "Quant de temps vol dedicar a la seva rutina?" crlf)
    (bind ?num (read))
    (while (not (>= ?num 30)) do 
        (printout t "La rutina no pot ser inferior a 30min al dia. Quant de temps vol dedicar a la seva rutina?" crlf)
        (bind ?num (read))
    )
    (modify ?g (temps ?num))
    (modify ?g (salut "ok"))
)


;;;Salut

(defrule preguntes::obtenir-salut "Obté si la persona té algun aspecte de salut a tenir en compte"
    ?g <- (lector_data (salut "ok")(habit ?habit))
    =>
    (printout t "Té algun aspecte de salut del que haguem d'estar conscernits?" crlf)
    (bind ?text (read))
    (if (or (eq (str-compare ?text "SI") 0) 
             (eq (str-compare ?text "Si") 0) 
             (eq (str-compare ?text "si") 0)) then
        (modify ?g (salut "noOK"))     
    else
        (modify ?g (salut "OK"))
	(if (not (eq ?habit "on")) then
        (modify ?g (habit "on"))
    )
    )
)

    (defrule preguntes::obtenir-tipusSalut "Obte quina condició de salut te la persona"
    ?g <- (lector_data (salut "noOK"))
    =>
    (printout t "Quina d'aquestes condicions de salut pateix?" crlf)
    (printout t "1- Condició Musculoesquelètica" crlf)
    (printout t "2- Condició Dietètica" crlf)
    (printout t "3- Totes les anteriors" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 3))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 3. Quina d'aquestes condicions de salut pateix?" crlf)
        (bind ?num (read))
    )
    (switch ?num
        (case 1 then (modify ?g (lesio "true")))
        (case 2 then (modify ?g (dieta "true")))
        (case 3 then (modify ?g (lesio "true")(dieta "true")))
        (default (printout t "Opció no vàlida." crlf))
    )
	(modify ?g (salut "NOOK"))
    )

    (defrule preguntes::obtenir-lesio "Obté el grup muscular que la persona té lesionada"
    ?g <- (lector_data (lesio "true")(habit ?habit))
    (test (not (eq ?habit "on")))
    =>
    (printout t "A quina regió muscular té la seva lesió?" crlf)
    (printout t "1- Abdomen" crlf)
    (printout t "2- Braços" crlf)
    (printout t "3- Cames" crlf)
    (printout t "4- Esquena" crlf)
    (printout t "5- Tors" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 5))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 5. A quina regió muscular té la seva lesió?" crlf)
        (bind ?num (read))
    )
    (switch ?num
        (case 1 then (modify ?g (lesio "Abdomen")))
        (case 2 then (modify ?g (lesio "Bracos")))
        (case 3 then (modify ?g (lesio "Cames")))
        (case 4 then (modify ?g (lesio "Esquena")))
        (case 5 then (modify ?g (lesio "Tors")))
        (default (printout t "Opció no vàlida." crlf))
    )
    (if (not (eq ?habit "on")) then
        (modify ?g (habit "on"))
    )
    )

(defrule preguntes::obtenir-dieta "Obté el grup muscular que la persona té lesionada"
    ?g <- (lector_data (dieta "true") (habit ?habit))
    =>
    (printout t "Quina condició dietètica té?" crlf)
    (printout t "1- Menja en excès" crlf)
    (printout t "2- Menja en deficiència" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 2))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 2. Quina condició dietètica té?" crlf)
        (bind ?num (read))
    )
    (switch ?num
        (case 1 then (modify ?g (dieta "surplus")))
        (case 2 then (modify ?g (dieta "deficit")))
    )
    (if (not (eq ?habit "on")) then
        (modify ?g (habit "on"))
    )
)


;;;Hàbits

    (defrule preguntes::obtenir-laboral "Obte els hàbits laborals de la persona"
    ?g <- (lector_data (habit "on"))
    =>
    (printout t "Quina d'aquestes activitats fa més a la feina?" crlf)
    (printout t "1- Estar assegut" crlf)
    (printout t "2- Estar de peu" crlf)
    (printout t "3- Desplaçaments constants" crlf)
    (printout t "4- Aixecament de pesos" crlf)
    (printout t "5- Repetició de moviments" crlf)
    (printout t "6- No treballa" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 6))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 6. Quina d'aquestes activitats fa més a la feina?" crlf)
        (bind ?num (read))
    )
    (switch ?num
        (case 1 then (modify ?g (laboral "SIT")) (modify ?g (habit "filling")))
        (case 2 then (modify ?g (laboral "STAND")) (modify ?g (habit "filling")))
        (case 3 then (modify ?g (laboral "MOVE")) (modify ?g (habit "filling")))
	(case 4 then (modify ?g (laboral "LIFT")) (modify ?g (habit "filling")))
	(case 5 then (modify ?g (laboral "REPEAT")) (modify ?g (habit "filling")))
	(case 6 then (modify ?g (laboral "CAP"))(modify ?g (habit "filling3")))
        (default (printout t "Opció no vàlida." crlf))
    )
    )

(defrule preguntes::obtenir-fLaboralW "Obté la freqüència d'activitat laboral de la persona"
    ?g <- (lector_data (habit ?habit))
    (test (eq ?habit "filling"))
    =>
    (printout t "Amb quina freqüència de dies/setmana realitza dita activitat laboral?" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 7))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 7. Amb quina freqüència de dies/setmana realitza dita activitat laboral?" crlf)
        (bind ?num (read))
    )
    (modify ?g (fLaboralW ?num))
    (modify ?g (habit "filling2"))
)

(defrule preguntes::obtenir-fLaboralD "Obté la duració d'activitat laboral de la persona al dia"
    ?g <- (lector_data (habit ?habit))
    (test (eq ?habit "filling2"))
    =>
    (printout t "Amb quina freqüència de hores/dia realitza dita activitat laboral?" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 24))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 24. Amb quina freqüència de hores/dia realitza dita activitat laboral?" crlf)
        (bind ?num (read))
    )
    (modify ?g (fLaboralD ?num))
    (modify ?g (habit "filling3"))
)

    (defrule preguntes::obtenir-estatic "Obte els hàbits estàtics de la persona"
    ?g <- (lector_data (habit "filling3"))
    =>
    (printout t "Quina d'aquestes activitats estàtiques fa més a casa?" crlf)
    (printout t "1- Mirar la tele" crlf)
    (printout t "2- Llegir" crlf)
    (printout t "3- Jugar a videojocs" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 3))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 3. Quina d'aquestes estàtiques fa més a casa?" crlf)
        (bind ?num (read))
    )
    (switch ?num
        (case 1 then (modify ?g (estatic "TV")))
        (case 2 then (modify ?g (estatic "BOOK")))
        (case 3 then (modify ?g (estatic "GAMER")))
        (default (printout t "Opció no vàlida." crlf))
    )
	(modify ?g (habit "filling4"))
    )

(defrule preguntes::obtenir-fEstaticW "Obté la freqüència d'activitat estàtica de la persona"
    ?g <- (lector_data (habit ?habit))
    (test (eq ?habit "filling4"))
    =>
    (printout t "Amb quina freqüència de dies/setmana realitza dita activitat estàtica?" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 7))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 7. Amb quina freqüència de dies/setmana realitza dita activitat estàtica?" crlf)
        (bind ?num (read))
    )
    (modify ?g (fEstaticW ?num))
    (modify ?g (habit "filling5"))
)

(defrule preguntes::obtenir-fEstaticD "Obté la duració d'activitat estàtica de la persona al dia"
    ?g <- (lector_data (habit ?habit))
    (test (eq ?habit "filling5"))
    =>
    (printout t "Amb quina freqüència de hores/dia realitza dita activitat estàtica?" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 24))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 24. Amb quina freqüència de hores/dia realitza dita activitat estàtica?" crlf)
        (bind ?num (read))
    )
    (modify ?g (fEstaticD ?num))
    (modify ?g (habit "filling6"))
)

    (defrule preguntes::obtenir-domestic "Obte els hàbits domèstics de la persona"
    ?g <- (lector_data (habit "filling6"))
    =>
    (printout t "Quina d'aquestes activitats domèstiques fa més a casa?" crlf)
    (printout t "1- Escombrar" crlf)
    (printout t "2- Fregar" crlf)
    (printout t "3- Bugada" crlf)
    (printout t "4- Fregar plats" crlf)
    (printout t "5- Cap" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 5))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 5. Quina d'aquestes activitats domèstiques fa més a casa?" crlf)
        (bind ?num (read))
    )
    (switch ?num
        (case 1 then (modify ?g (domestic "BROOM")) (modify ?g (habit "filling7")))
        (case 2 then (modify ?g (domestic "MOP")) (modify ?g (habit "filling7")))
        (case 3 then (modify ?g (domestic "LAUNDRY")) (modify ?g (habit "filling7")))
	(case 4 then (modify ?g (domestic "DISHWASHER")) (modify ?g (habit "filling7")))
	(case 5 then (modify ?g (domestic "CAP")) (modify ?g (habit "filling9")))
        (default (printout t "Opció no vàlida." crlf))
    )
    )

(defrule preguntes::obtenir-fDomesticW "Obté la freqüència d'activitat domèstica de la persona"
    ?g <- (lector_data (habit ?habit))
    (test (eq ?habit "filling7"))
    =>
    (printout t "Amb quina freqüència de dies/setmana realitza dita activitat domèstica?" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 7))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 7. Amb quina freqüència de dies/setmana realitza dita activitat domèstica?" crlf)
        (bind ?num (read))
    )
    (modify ?g (fDomesticW ?num))
    (modify ?g (habit "filling8"))
)

(defrule preguntes::obtenir-fDomesticD "Obté la duració d'activitat domèstica de la persona al dia"
    ?g <- (lector_data (habit ?habit))
    (test (eq ?habit "filling8"))
    =>
    (printout t "Amb quina freqüència de hores/dia realitza dita activitat domèstica?" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 24))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 24. Amb quina freqüència de hores/dia realitza dita activitat domèstica?" crlf)
        (bind ?num (read))
    )
    (modify ?g (fDomesticD ?num))
    (modify ?g (habit "filling9"))
)

    (defrule preguntes::obtenir-desplacament "Obte els hàbits de desplaçament de la persona"
    ?g <- (lector_data (habit "filling9"))
    =>
    (printout t "Quina d'aquestes activitats de desplaçament fa més?" crlf)
    (printout t "1- Comprar a peu" crlf)
    (printout t "2- Passejar el gos" crlf)
    (printout t "3- Donar un tomb" crlf)
    (printout t "4- Fer encàrrecs" crlf)
    (printout t "5- Cap" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 5))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 5. Quina d'aquestes activitats de desplaçament fa més?" crlf)
        (bind ?num (read))
    )
    (switch ?num
        (case 1 then (modify ?g (desplacament "SHOP")) (modify ?g (habit "filling10")))
        (case 2 then (modify ?g (desplacament "PET")) (modify ?g (habit "filling10")))
        (case 3 then (modify ?g (desplacament "WALKER")) (modify ?g (habit "filling10")))
	(case 4 then (modify ?g (desplacament "ERRAND")) (modify ?g (habit "filling10")))
	(case 5 then (modify ?g (desplacament "CAP")) (modify ?g (habit "DONE")))
        (default (printout t "Opció no vàlida." crlf))
    )
    )

(defrule preguntes::obtenir-fDesplacamentW "Obté la freqüència d'activitat de desplaçament de la persona"
    ?g <- (lector_data (habit ?habit))
    (test (eq ?habit "filling10"))
    =>
    (printout t "Amb quina freqüència de dies/setmana realitza dita activitat domèstica?" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 7))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 7. Amb quina freqüència de dies/setmana realitza dita activitat domèstica?" crlf)
        (bind ?num (read))
    )
    (modify ?g (fDesplacamentW ?num))
    (modify ?g (habit "filling11"))
)

(defrule preguntes::obtenir-fDesplacamentD "Obté la duració d'activitat de desplaçament de la persona al dia"
    ?g <- (lector_data (habit ?habit))
    (test (eq ?habit "filling11"))
    =>
    (printout t "Amb quina freqüència de hores/dia realitza dita activitat domèstica?" crlf)
    (bind ?num (read))
    (while (not (and (>= ?num 1) (<= ?num 24))) do 
        (printout t "Sisplau, respongui entre els rangs de 1 i 24. Amb quina freqüència de hores/dia realitza dita activitat domèstica?" crlf)
        (bind ?num (read))
    )
    (modify ?g (fDesplacamentD ?num))
    (modify ?g (habit "DONE"))
)




(defrule preguntes::obtenir-intensitat
   "Calcula la intensitat del usuari"
   ?g <- (lector_data (habit ?habit) 
                      (edat ?edat) 
                      (imc ?imc) 
                      (psMax ?psMax) 
                      (psMin ?psMin) 
                      (parAd ?parAd) 
                      (bpm ?bpm) 
                      (cansanci ?cansanci) 
                      (mareig ?mareig) 
                      (fatiga ?fatiga)
		      (dieta ?dieta)
		      (laboral ?laboral)
		      (fLaboralW ?fLaboralW)
		      (fLaboralD ?fLaboralD)
		      (fEstaticW ?fEstaticW)
		      (fEstaticD ?fEstaticD)
		      (domestic ?domestic)
		      (fDomesticW ?fDomesticW)
		      (fDomesticD ?fDomesticD)
		      (desplacament ?desplacament)
		      (fDesplacamentW ?fDesplacamentW)
		      (fDesplacamentD ?fDesplacamentD)
                      (intensitat ?intensitat))
   (test (eq ?habit "DONE"))
   =>
   ;; Update intensitat based on edat
   (if (< ?edat 30)
       then (bind ?intensitat (+ ?intensitat 1))
       else 
           (if (> ?edat 65)
               then (bind ?intensitat (- ?intensitat 1))))

   ;; Update intensitat based on imc
   (if (< ?imc 20.0)
       then (bind ?intensitat (- ?intensitat 1))
       else 
           (if (> ?imc 25.0)
               then (bind ?intensitat (- ?intensitat 1))
               else 
                   (if (and (> ?imc 21.0) (< ?imc 24.0))
                       then (bind ?intensitat (+ ?intensitat 1)))))

   ;; Update intensitat based on psMax
   (if (< ?psMax 120)
       then (bind ?intensitat (- ?intensitat 1))
       else 
           (if (> ?psMax 140)
               then (bind ?intensitat (- ?intensitat 1))))

   ;; Update intensitat based on psMin
   (if (< ?psMin 60)
       then (bind ?intensitat (- ?intensitat 1))
       else 
           (if (> ?psMin 80)
               then (bind ?intensitat (- ?intensitat 1))))

   ;; Comprovar si s'ha modificat parAd
   (if (eq ?parAd "cert")
       then
           ;; Update intensitat per bpm
           (if (< ?bpm 120)
               then (bind ?intensitat (+ ?intensitat 1))
               else 
                   (if (> ?bpm 135)
                       then (bind ?intensitat (- ?intensitat 1))))

           ;; Update intensitat per cansanci
           (if (eq ?cansanci "SI")
               then (bind ?intensitat (- ?intensitat 1)))

           ;; Update intensitat per mareig
           (if (eq ?mareig "SI")
               then (bind ?intensitat (- ?intensitat 1)))

           ;; Update intensitat per fatiga
           (if (eq ?fatiga "SI")
               then (bind ?intensitat (- ?intensitat 1))))


;; Update intensitat per dieta
(if (eq ?dieta "surplus")
    then (bind ?intensitat (+ ?intensitat 1))
    else 
        (if (eq ?dieta "deficit")
            then (bind ?intensitat (- ?intensitat 1))))


   ;; Intensitat per hàbits

	;;Hàbits laborals
   (if (or (eq ?laboral "CAP") (eq ?laboral "SIT"))
       then 
           (bind ?intensitat (- ?intensitat 1))
       else 
           (bind ?resultL (* ?fLaboralW ?fLaboralD))
           (if (> ?resultL 15)
               then (bind ?intensitat (+ ?intensitat 1)))
           (if (> ?resultL 30)
               then (bind ?intensitat (+ ?intensitat 1)))
   )

	;;Hàbits Estàtics
	(bind ?resultE (* ?fEstaticW ?fEstaticD))
	(if (> ?resultE 30)
		then (bind ?intensitat (- ?intensitat 1)))
	(if (> ?resultE 40)
		then (bind ?intensitat (- ?intensitat 1)))
	(if (> ?resultE 50)
		then (bind ?intensitat (- ?intensitat 1)))
   

	;;Hàbits Domèstics
   (if (eq ?domestic "CAP")
       then 
           (bind ?intensitat (- ?intensitat 1))
       else 
           (bind ?resultD (* ?fDomesticW ?fDomesticD))
           (if (> ?resultD 10)
               then (bind ?intensitat (+ ?intensitat 1)))
           (if (> ?resultD 15)
               then (bind ?intensitat (+ ?intensitat 1)))
           (if (> ?resultD 30)
               then (bind ?intensitat (+ ?intensitat 1)))

   )

	;;Hàbits Desplaçament
   (if (eq ?desplacament "CAP")
       then 
           (bind ?intensitat (- ?intensitat 1))
       else 
           (bind ?resultM (* ?fDesplacamentW ?fDesplacamentD))
           (if (> ?resultM 10)
               then (bind ?intensitat (+ ?intensitat 1)))
           (if (> ?resultM 15)
               then (bind ?intensitat (+ ?intensitat 1)))
   )



   ;; Modify the fact with the new intensitat value
   
;; Ponderar la intensitat
(if (< ?intensitat 1)
    then (modify ?g (intensitat 1))
    else (if (> ?intensitat 10)
        then (modify ?g (intensitat 10))
        else (modify ?g (intensitat ?intensitat))))



   (modify ?g (habit "FINISH"))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule recomanacions::crear-lista-exercicis "Crea la lista de opcions"
   (declare (salience 5))
   (test (eq (length$ ?*llista-exercicis*) 0))
   (instances-loaded TRUE)
   =>
   (bind ?lista (find-all-instances ((?inst Exercicis)) TRUE))
   (bind ?*llista-exercicis* (create$))

   ;; Iterate through ?lista and add each item to ?*llista-exercicis*
   (bind ?index 0)
   (progn$ (?fact ?lista)
      (bind ?*llista-exercicis* (insert$ ?*llista-exercicis* ?index ?fact))
      (bind ?index (+ ?index 1))
   )
   (printout t "Llista d'exercicis: " ?*llista-exercicis* crlf)
)

;;; Descartar exercicis que no interessen segons objectiu i les lesions
(deffunction erase-exercicis-by-objectiu (?objectiu ?gMusc) "Elimina els exercicis basat en l'objectiu"
    ;; If the objective is "Musculacio", find and delete exercises not working the specified muscle group
    (if (eq ?objectiu "Musculacio")
        then
        (bind ?exercicis-to-erase
              (find-all-instances ((?exercici Exercicis))
                                  (not (member$ ?gMusc (send ?exercici get-treballa_Musc)))))
        (if (> (length$ ?exercicis-to-erase) 0)
            then
            (progn$ (?exercici ?exercicis-to-erase)
                (send ?exercici delete))))

    ;; Find and delete exercises not serving the specified objective
    (bind ?exercicis-to-erase
          (find-all-instances ((?exercici Exercicis))
                              (not (member$ ?objectiu (send ?exercici get-serveix_Obj)))))
    (if (> (length$ ?exercicis-to-erase) 0)
        then
        (progn$ (?exercici ?exercicis-to-erase)
            (send ?exercici delete)))
)

(deffunction erase-exercicis-by-lesio (?lesio) "Elimina els exercicis basats en lesió"
    (bind ?exercicis-to-erase
          (find-all-instances ((?exercici Exercicis))
                              (member$ ?lesio (send ?exercici get-treballa_Musc))))
    (if (> (length$ ?exercicis-to-erase) 0)
        then
        (progn$ (?exercici ?exercicis-to-erase)
            (send ?exercici delete))
    )
)

(defrule recomanacions::podar-llista-exercicis "Crea la lista de opciones"
   (declare (salience 1))
   ?g <- (lector_data (objectiu ?objectiu) (gMusc ?gMusc) (lesio ?lesio))
   =>
   (erase-exercicis-by-objectiu ?objectiu ?gMusc)
   (erase-exercicis-by-lesio ?lesio)
)

(defrule imprimir::imprimir-rutina "Imprimeix els exercicis de la rutina de l'usuari"
   (declare (salience -100))
   (test (neq (length$ ?*llista-exercicis*) 0))
   =>
   (printout t "Aquesta es la seva rutina: " crlf)
   (bind ?printNum (length$ ?*llista-exercicis*))
   (loop-for-count (?i ?printNum)
      (bind ?instance (nth$ (+ ?i 1) ?*llista-exercicis*))
      (printout t "Exercici: " ?instance crlf)
   )
)

(defrule imprimir::no-exercicis "No s'ha pogut trobar una rutina per a voste."
   (declare (salience -100))
   (test (eq (length$ ?*llista-exercicis*) 0))
   =>
   (printout t "No s'ha pogut trobar una rutina per a voste." crlf)
)











