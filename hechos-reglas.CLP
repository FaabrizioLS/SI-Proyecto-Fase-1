(deffacts hechos-del-usuario
   (presupuesto_bajo 15000)
   (presupuesto_medio 25000)
   (presupuesto_alto 40000)
   (uso_diario si)
   (uso_familiar si)
   (necesita_economia_combustible si)
   (necesita_espacio si)
   (ubicacion ciudad)
   (clima_lluvioso si)
   (preferencia_tecnologia si)
   (valora_seguridad si)
   (preferencia_suv si)
   (preferencia_electrico no)
   (kilometraje_anual_alto si)
   (precio_combustible_alto si)
   (valora_mantenimiento_bajo si)
   (marca_preferida toyota)
   (prioriza_valor_reventa si)
   (disponibilidad_servicio_tecnico si)
   (ruta_montañosa si)
   (distancia_diaria 50)
   (preferencia_estetica si)
   (necesita_baul_grande si)
   (vehiculo_actual_antiguo si)
   (edad_comprador 30)
   (tipo_combustible_preferido gasolina)
   (preferencia_transmision automatica)
   (frecuencia_viajes alta)
   (uso_offroad no)
   (reputacion_seguridad_importante si)
   (acceso_credito si)
   (importancia_sistema_infoentretenimiento si)
   (uso_trabajo si)
   (uso_viajes_largos si)
   (preferencia_color negro)
   (tipo_estacionamiento reducido)
   (preferencia_autos_nuevos si)
   (consumo_preferido_litros_100km 5)
   (estrato_socioeconomico medio_alto)
   (conocimiento_mecanico bajo)
   (tamano_familia 4)
   (desea_asistente_manejo si)
   (uso_fines_de_semana si)
   (sensibilidad_precio si)
   (interes_financiamiento si)
)
(deffacts hechos-del-usuario 
   ; Definir hechos de entrada según el contexto
)

;; Reglas con nombres y vehículos sugeridos

(defrule presupuesto-bajo-economia-combustible
  (presupuesto_bajo ?p)
  (necesita_economia_combustible si)
  =>
  (assert (sugerido toyota))
  (assert (sugerido hyundai))
  (assert (sugerido kia))
)

(defrule presupuesto-alto-preferencia-suv
  (presupuesto_alto ?p)
  (preferencia_suv si)
  =>
  (assert (sugerido nissan))
  (assert (sugerido honda))
  (assert (sugerido mitsubishi))
)

(defrule valora-seguridad-reputacion-seguridad
  (valora_seguridad si)
  (reputacion_seguridad_importante si)
  =>
  (assert (sugerido toyota))
  (assert (sugerido honda))
  (assert (sugerido volkswagen))
)

(defrule clima-lluvioso-ruta-montañosa
  (clima_lluvioso si)
  (ruta_montañosa si)
  =>
  (assert (sugerido mitsubishi))
  (assert (sugerido subaru))
)

(defrule uso-trabajo-viajes-largos
  (uso_trabajo si)
  (uso_viajes_largos si)
  =>
  (assert (sugerido ford))
  (assert (sugerido nissan))
  (assert (sugerido hyundai))
)

(defrule valor-reventa-marca-preferida-toyota
  (prioriza_valor_reventa si)
  (marca_preferida toyota)
  =>
  (assert (sugerido toyota))
)

(defrule kilometraje-alto-precio-combustible-alto
  (kilometraje_anual_alto si)
  (precio_combustible_alto si)
  =>
  (assert (sugerido toyota))
  (assert (sugerido chevrolet))
  (assert (sugerido renault))
)

(defrule sin-servicio-tecnico-disponible
  (disponibilidad_servicio_tecnico no)
  =>
  (assert (sugerido ford))
  (assert (sugerido honda))
)

(defrule tipo-estacionamiento-reducido-preferencia-suv
  (tipo_estacionamiento_reducido)
  (preferencia_suv si)
  =>
  (assert (sugerido kia))
  (assert (sugerido honda))
  (assert (sugerido volkswagen))
)

(defrule preferencia-transmision-automatica-viajes-largos
  (preferencia_transmision_automatica)
  (uso_viajes_largos si)
  =>
  (assert (sugerido nissan))
  (assert (sugerido honda))
  (assert (sugerido subaru))
)

(defrule edad-comprador-preferencia-estetica
  (edad_comprador ?e&:(< ?e 35))
  (preferencia_estetica si)
  =>
  (assert (sugerido ford))
  (assert (sugerido hyundai))
  (assert (sugerido peugeot))
)

(defrule baul-grande-uso-familiar
  (necesita_baul_grande si)
  (uso_familiar si)
  =>
  (assert (sugerido chevrolet))
  (assert (sugerido toyota))
  (assert (sugerido hyundai))
)

(defrule vehiculo-antiguo-recambio
  (vehiculo_actual_antiguo si)
  =>
  (assert (sugerido toyota))
  (assert (sugerido ford))
)

(defrule acceso-credito-presupuesto-medio
  (acceso_credito si)
  (presupuesto_medio ?p)
  =>
  (assert (sugerido nissan))
  (assert (sugerido mitsubishi))
  (assert (sugerido kia))
)

(defrule sistema-infoentretenimiento-importante
  (importancia_sistema_infoentretenimiento si)
  =>
  (assert (sugerido chevrolet))
  (assert (sugerido volkswagen))
  (assert (sugerido renault))
)

(defrule uso-offroad-no-ruta-montañosa
  (uso_offroad no)
  (ruta_montañosa si)
  =>
  (assert (sugerido subaru))
  (assert (sugerido mitsubishi))
)

(defrule frecuencia-viajes-alta-mantenimiento-bajo
  (frecuencia_viajes alta)
  (valora_mantenimiento_bajo si)
  =>
  (assert (sugerido toyota))
  (assert (sugerido honda))
  (assert (sugerido suzuki))
)

(defrule conocimiento-mecanico-bajo
  (conocimiento_mecanico bajo)
  =>
  (assert (sugerido toyota))
  (assert (sugerido hyundai))
  (assert (sugerido kia))
)

(defrule autos-nuevos-presupuesto-bajo
  (preferencia_autos_nuevos si)
  (presupuesto_bajo ?p)
  =>
  (assert (sugerido kia))
  (assert (sugerido suzuki))
  (assert (sugerido hyundai))
)

(defrule preferencia-color-negro
  (preferencia_color negro)
  =>
  (assert (sugerido ford))
  (assert (sugerido chevrolet))
  (assert (sugerido honda))
)

(defrule uso-familiar-preferencia-suv-tecnologia
  (uso_familiar si)
  (preferencia_suv si)
  (preferencia_tecnologia si)
  =>
  (assert (sugerido nissan))
  (assert (sugerido toyota))
  (assert (sugerido kia))
)

(defrule tipo-estacionamiento-reducido
  (tipo_estacionamiento_reducido)
  =>
  (assert (sugerido honda))
  (assert (sugerido suzuki))
  (assert (sugerido renault))
)

(defrule preferencia-diseño-moderno
  (preferencia_diseño_moderno si)
  =>
  (assert (sugerido peugeot))
  (assert (sugerido volkswagen))
  (assert (sugerido ford))
)

(defrule presupuesto-bajo-preferencia-suv
  (presupuesto_bajo ?p)
  (preferencia_suv si)
  =>
  (assert (sugerido hyundai))
  (assert (sugerido suzuki))
  (assert (sugerido renault))
)

(defrule preferencia-electrico
  (preferencia_electrico si)
  =>
  (assert (sugerido renault))
  (assert (sugerido hyundai))
  (assert (sugerido nissan))
)

(defrule presupuesto-medio-preferencia-suv
  (presupuesto_medio ?p)
  (preferencia_suv si)
  =>
  (assert (sugerido mitsubishi))
  (assert (sugerido chevrolet))
  (assert (sugerido kia))
)

(defrule preferencia-familiar-marca-preferida-toyota
  (preferencia_familiar si)
  (marca_preferida toyota)
  =>
  (assert (sugerido toyota))
)

(defrule baul-grande-preferencia-suv
  (necesita_baul_grande si)
  (preferencia_suv si)
  =>
  (assert (sugerido toyota))
  (assert (sugerido chevrolet))
  (assert (sugerido hyundai))
)

(defrule clima-frio
  (clima_frio si)
  =>
  (assert (sugerido subaru))
  (assert (sugerido mitsubishi))
  (assert (sugerido honda))
)

(defrule presupuesto-alto-preferencia-automatica
  (presupuesto_alto ?p)
  (preferencia_automatica si)
  =>
  (assert (sugerido bmw))
  (assert (sugerido mercedes-benz))
  (assert (sugerido audi))
)

(defrule uso-diario-preferencia-economico
  (uso_diario si)
  (preferencia_economico si)
  =>
  (assert (sugerido suzuki))
  (assert (sugerido kia))
  (assert (sugerido honda))
)

(defrule preferencia-sedan-presupuesto-medio
  (preferencia_sedan si)
  (presupuesto_medio ?p)
  =>
  (assert (sugerido hyundai))
  (assert (sugerido nissan))
  (assert (sugerido ford))
)

(defrule preferencia-color-blanco
  (preferencia_color blanco)
  =>
  (assert (sugerido toyota))
  (assert (sugerido chevrolet))
  (assert (sugerido ford))
)

(defrule edad-comprador-mayor-40
  (edad_comprador ?e&:(>= ?e 40))
  =>
  (assert (sugerido toyota))
  (assert (sugerido honda))
  (assert (sugerido chevrolet))
)

(defrule preferencia-hibrido
  (preferencia_hibrido si)
  =>
  (assert (sugerido toyota))
  (assert (sugerido honda))
  (assert (sugerido nissan))
)

(defrule preferencia-economico-uso-diario
  (preferencia_economico si)
  (uso_diario si)
  =>
  (assert (sugerido hyundai))
  (assert (sugerido suzuki))
)

(defrule presupuesto-alto-preferencia-4x4
  (presupuesto_alto ?p)
  (preferencia_4x4 si)
  =>
  (assert (sugerido toyota))
  (assert (sugerido land-rover))
  (assert (sugerido mitsubishi))
)

(defrule presupuesto-bajo-preferencia-deportivo
  (presupuesto_bajo ?p)
  (preferencia_deportivo si)
  =>
  (assert (sugerido hyundai))
  (assert (sugerido ford))
  (assert (sugerido peugeot))
)

(defrule frecuencia-viajes-baja-preferencia-auto-sedan
  (frecuencia_viajes baja)
  (preferencia_auto_sedan si)
  =>
  (assert (sugerido suzuki))
  (assert (sugerido kia))
  (assert (sugerido honda))
)

(defrule necesita-sistema-navegacion-presupuesto-medio
  (necesita_sistema_navegacion si)
  (presupuesto_medio ?p)
  =>
  (assert (sugerido nissan))
  (assert (sugerido mazda))
  (assert (sugerido chevrolet))
)
