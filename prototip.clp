
; #########################################
; ############### ONTOLOGIA ###############
; #########################################

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

; #########################################
; ########## ANALISIS DE DATOS ############
; #########################################

(defrule analisis_datos::cambio_a_modulo_generacion_resultados "Una vez hecho el analisis pasamos al modulo de generacion de resultados"
  =>
  (focus generacion_resultados)
)

; #########################################
; #### GENERACION DE RESULTADOS ###########
; #########################################

(deftemplate objectiu
    (slot valor))

(defrule generacion_resultados::escull_objectiu_edat
    ?f <- (datos_evento (edat ?edad))
    =>
    (if (and (>= ?edad 16) (<= ?edad 30)) then
        (assert (objectiu (valor "Musculacio")))
    else if (and (> ?edad 30) (<= ?edad 50)) then
        (assert (objectiu (valor "Posar-se_en_Forma")))
    else if (and (> ?edad 50) (<= ?edad 100)) then
        (assert (objectiu (valor "Manteniment")))
    )
)

(deffunction member-sublist (?objectiu ?serveix_Obj)
    (foreach ?lista ?serveix_Obj
        (if (member$ ?objectiu ?lista) then (return TRUE)))
    (return FALSE)
)


(defrule generacion_resultados::recomanacio_simple
    ?objecte <- (objectiu (valor ?objectiu))
    ?exercici <- (object (is-a ?class&:(or (eq ?class Exercicis) (subclassp ?class Exercicis)))
        (serveix_Obj $?serveix_Obj)
    )
    (test (member$ ?objectiu $?serveix_Obj))
    =>
    (bind ?nom (instance-name ?exercici))
    (printout t "Recomanació d'exercici: " ?nom crlf)
)


(defrule debug-objectiu
    ?objecte <- (objectiu (valor ?objectiu))
    =>
    (printout t "Objectiu valor: " ?objectiu crlf)
)

(defrule debug-exercici
    ?exercici <- (object (is-a ?class&:(or (eq ?class Exercicis) (subclassp ?class Exercicis)))
        (serveix_Obj $?serveix_Obj)
    )
    =>
    (bind ?nom (instance-name ?exercici))
    (printout t "Exercici Nom: " ?nom crlf)
    (printout t "Serveix Objectius: " $?serveix_Obj crlf)
)
