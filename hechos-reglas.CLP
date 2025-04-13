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

(defrule regla1
  (presupuesto_bajo ?p)
  (necesita_economia_combustible si)
  =>
  (printout t "Sugerencia: Auto compacto económico. Considera marcas como Toyota, Hyundai, o Kia." crlf))

(defrule regla2
  (presupuesto_alto ?p)
  (preferencia_suv si)
  =>
  (printout t "Sugerencia: SUV premium disponible. Marcas recomendadas: Nissan, Honda, Mitsubishi." crlf))

(defrule regla3
  (valora_seguridad si)
  (reputacion_seguridad_importante si)
  =>
  (printout t "Recomendado: Modelos con 5 estrellas en seguridad. Marcas: Toyota, Honda, Volkswagen." crlf))

(defrule regla4
  (clima_lluvioso si)
  (ruta_montañosa si)
  =>
  (printout t "Sugerencia: Vehículo con tracción AWD. Marcas: Mitsubishi, Subaru." crlf))

(defrule regla5
  (uso_trabajo si)
  (uso_viajes_largos si)
  =>
  (printout t "Recomendado: Motor diésel o híbrido. Marcas recomendadas: Ford, Nissan, Hyundai." crlf))

(defrule regla6
  (prioriza_valor_reventa si)
  (marca_preferida toyota)
  =>
  (printout t "Sugerido: Toyota de alta demanda. Muy buena opción para valor de reventa." crlf))

(defrule regla7
  (kilometraje_anual_alto si)
  (precio_combustible_alto si)
  =>
  (printout t "Recomendado: Híbrido o eléctrico. Marcas recomendadas: Toyota, Chevrolet, Renault." crlf))

(defrule regla8
  (disponibilidad_servicio_tecnico no)
  =>
  (printout t "Evitar marcas sin soporte local. Evitar marcas que no tengan presencia en Perú." crlf))

(defrule regla9
  (tipo_estacionamiento_reducido)
  (preferencia_suv si)
  =>
  (printout t "Sugerencia: SUV compacto urbano. Marcas: Kia, Honda, Volkswagen." crlf))

(defrule regla10
  (preferencia_transmision_automatica)
  (uso_viajes_largos si)
  =>
  (printout t "Recomendado: Transmisión CVT. Marcas recomendadas: Nissan, Honda, Subaru." crlf))

(defrule regla11
  (edad_comprador ?e&:(< ?e 35))
  (preferencia_estetica si)
  =>
  (printout t "Recomendado: Deportivo compacto. Marcas recomendadas: Ford, Hyundai, Peugeot." crlf))

(defrule regla12
  (necesita_baul_grande si)
  (uso_familiar si)
  =>
  (printout t "Sugerido: Sedán grande o SUV. Marcas recomendadas: Chevrolet, Toyota, Hyundai." crlf))

(defrule regla13
  (vehiculo_actual_antiguo si)
  =>
  (printout t "Ofrecemos bono de recambio. Considera marcas como Toyota o Ford." crlf))

(defrule regla14
  (acceso_credito si)
  (presupuesto_medio ?p)
  =>
  (printout t "Disponible: Ofertas de financiamiento. Marcas como Nissan, Mitsubishi y Kia ofrecen opciones." crlf))

(defrule regla15
  (importancia_sistema_infoentretenimiento si)
  =>
  (printout t "Sugerido: Modelos con pantalla táctil y conectividad. Marcas recomendadas: Chevrolet, Volkswagen, Renault." crlf))

(defrule regla16
  (uso_offroad no)
  (ruta_montañosa si)
  =>
  (printout t "Recomendado: SUV urbano AWD. Marcas: Subaru, Mitsubishi." crlf))

(defrule regla17
  (frecuencia_viajes alta)
  (valora_mantenimiento_bajo si)
  =>
  (printout t "Sugerido: Marca confiable y económica. Marcas: Toyota, Honda, Suzuki." crlf))

(defrule regla18
  (conocimiento_mecanico bajo)
  =>
  (printout t "Sugerido: Modelos de bajo mantenimiento. Marcas: Toyota, Hyundai, Kia." crlf))

(defrule regla19
  (preferencia_autos_nuevos si)
  (presupuesto_bajo ?p)
  =>
  (printout t "Mostrar opciones nuevas en stock económico. Marcas: Kia, Suzuki, Hyundai." crlf))

(defrule regla20
  (preferencia_color negro)
  =>
  (printout t "Sugerir modelos disponibles en color negro. Marcas: Ford, Chevrolet, Honda." crlf))

(defrule regla21
  (uso_familiar si)
  (preferencia_suv si)
  (preferencia_tecnologia si)
  =>
  (printout t "Sugerencia: SUV familiar con tecnología avanzada. Marcas: Nissan, Toyota, Kia." crlf))

(defrule regla22
  (tipo_estacionamiento_reducido)
  =>
  (printout t "Recomendación: Vehículo compacto con buena maniobrabilidad. Marcas: Honda, Suzuki, Renault." crlf))

(defrule regla23
  (preferencia_diseño_moderno si)
  =>
  (printout t "Sugerencia: Modelos con diseño actual y estético. Marcas: Peugeot, Volkswagen, Ford." crlf))

(defrule regla24
  (presupuesto_bajo ?p)
  (preferencia_suv si)
  =>
  (printout t "Sugerencia: SUV económica. Marcas: Hyundai, Suzuki, Renault." crlf))

(defrule regla25
  (preferencia_electrico si)
  =>
  (printout t "Sugerido: Vehículos eléctricos disponibles. Marcas: Renault, Hyundai, Nissan." crlf))

(defrule regla26
  (presupuesto_medio ?p)
  (preferencia_suv si)
  =>
  (printout t "Sugerencia: SUV de gama media. Marcas: Mitsubishi, Chevrolet, Kia." crlf))

(defrule regla27
  (preferencia_familiar si)
  (marca_preferida toyota)
  =>
  (printout t "Sugerido: Toyota para uso familiar. Marcas recomendadas: Toyota, Honda." crlf))

(defrule regla28
  (necesita_baul_grande si)
  (preferencia_suv si)
  =>
  (printout t "Recomendado: SUV con gran capacidad de maletero. Marcas: Toyota, Chevrolet, Hyundai." crlf))

(defrule regla29
  (clima_frio si)
  =>
  (printout t "Sugerencia: Vehículo con calefacción. Marcas: Subaru, Mitsubishi, Honda." crlf))

(defrule regla30
  (presupuesto_alto ?p)
  (preferencia_automatica si)
  =>
  (printout t "Sugerencia: Auto de lujo con transmisión automática. Marcas: BMW, Mercedes-Benz, Audi." crlf))

(defrule regla31
  (uso_diario si)
  (preferencia_economico si)
  =>
  (printout t "Sugerido: Auto económico y confiable. Marcas: Suzuki, Kia, Honda." crlf))

(defrule regla32
  (preferencia_sedan si)
  (presupuesto_medio ?p)
  =>
  (printout t "Sugerencia: Sedan de gama media. Marcas: Hyundai, Nissan, Ford." crlf))

(defrule regla33
  (preferencia_color blanco)
  =>
  (printout t "Sugerencia: Modelos disponibles en color blanco. Marcas: Toyota, Chevrolet, Ford." crlf))

(defrule regla34
  (edad_comprador ?e&:(>= ?e 40))
  =>
  (printout t "Sugerido: Autos cómodos y de fácil acceso. Marcas: Toyota, Honda, Chevrolet." crlf))

(defrule regla35
  (preferencia_hibrido si)
  =>
  (printout t "Sugerido: Vehículo híbrido. Marcas: Toyota, Honda, Nissan." crlf))

(defrule regla36
  (preferencia_economico si)
  (uso_diario si)
  =>
  (printout t "Sugerido: Auto económico para el día a día. Marcas: Hyundai, Suzuki." crlf))

(defrule regla37
  (presupuesto_alto ?p)
  (preferencia_4x4 si)
  =>
  (printout t "Sugerido: SUV 4x4 para aventuras. Marcas: Toyota, Land Rover, Mitsubishi." crlf))

(defrule regla38
  (presupuesto_bajo ?p)
  (preferencia_deportivo si)
  =>
  (printout t "Sugerido: Vehículo deportivo económico. Marcas: Hyundai, Ford, Peugeot." crlf))

(defrule regla39
  (frecuencia_viajes baja)
  (preferencia_auto_sedan si)
  =>
  (printout t "Sugerido: Auto sedan de bajo mantenimiento. Marcas: Suzuki, Kia, Honda." crlf))

(defrule regla40
  (necesita_sistema_navegacion si)
  (presupuesto_medio ?p)
  =>
  (printout t "Sugerido: Auto con sistema de navegación y características de gama media. Marcas: Nissan, Mazda, Chevrolet." crlf))
