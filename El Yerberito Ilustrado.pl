% Hechos básicos sobre plantas medicinales
planta_medicinal(diente_de_leon, [depurativo, diuretico, hepatico], [hojas, raices], [infusion, jugo]).
planta_medicinal(genciana, [tonico, estimulante_apetito, digestivo], [raiz], [tintura, infusion]).
planta_medicinal(cola_de_caballo, [diuretico, remineralizante, cicatrizante], [tallos], [infusion, compresas]).

% Relaciones de tratamiento
trata(diente_de_leon, problemas_hepaticos).
trata(genciana, debilidad_estomacal).
trata(cola_de_caballo, infecciones_urinarias).

% Síntomas que alivian
alivia(diente_de_leon, retencion_liquidos).
alivia(genciana, falta_apetito).
alivia(cola_de_caballo, edemas).

% Preparaciones recomendadas
preparacion_recomendada(diente_de_leon, depuracion, infusion).
preparacion_recomendada(genciana, falta_apetito, tintura).
preparacion_recomendada(cola_de_caballo, infecciones_urinarias, infusion).

% Contraindicaciones
contraindicacion(cola_de_caballo, embarazo).
contraindicacion(genciana, ulceras_gastricas).

% Combinaciones efectivas
combinacion_efectiva(diente_de_leon, cardo_mariano, limpieza_hepatica).




% Nopal (Opuntia ficus-indica)
planta_medicinal(nopal, 
    [antidiabetico, hipoglucemiante, antiinflamatorio, cicatrizante], 
    [tallos, frutos], 
    [jugo, cataplasmas, infusion]).

trata(nopal, diabetes).
trata(nopal, colesterol_alto).
alivia(nopal, inflamacion_articular).
preparacion_recomendada(nopal, diabetes, jugo).
contraindicacion(nopal, hipoglucemia).

% Nogal (Juglans regia)
planta_medicinal(nogal,
    [antiseptico, astringente, vermifugo],
    [hojas, corteza, frutos],
    [infusion, tintura, cataplasmas]).

trata(nogal, infecciones_piel).
trata(nogal, parasitosis_intestinal).
alivia(nogal, diarrea).
preparacion_recomendada(nogal, infecciones_piel, cataplasma).
contraindicacion(nogal, embarazo).

% Nuez vomica (Strychnos nux-vomica)
planta_medicinal(nuez_vomica,
    [estimulante_nervioso, digestivo],
    [semillas],
    [tintura, extracto]).

trata(nuez_vomica, debilidad_digestiva).
trata(nuez_vomica, fatiga_mental).
alivia(nuez_vomica, estreñimiento).
preparacion_recomendada(nuez_vomica, debilidad_digestiva, tintura).
contraindicacion(nuez_vomica, dosis_altas). % Muy tóxica en dosis altas

% Ocote (Pinus spp.)
planta_medicinal(ocote,
    [antiseptico, expectorante, antiinflamatorio],
    [resina, hojas],
    [inhalaciones, infusion, tintura]).

trata(ocote, problemas_respiratorios).
trata(ocote, bronquitis).
alivia(ocote, congestion_nasal).
preparacion_recomendada(ocote, bronquitis, inhalaciones).

% Ortiga (Urtica dioica)
planta_medicinal(ortiga,
    [depurativo, diuretico, remineralizante, antihemorragico],
    [hojas, raices],
    [infusion, jugo, cataplasmas]).

trata(ortiga, anemia).
trata(ortiga, artritis).
alivia(ortiga, retencion_liquidos).
preparacion_recomendada(ortiga, anemia, infusion).
combinacion_efectiva(ortiga, diente_de_leon, depuracion_sanguinea).

% Ejemplos de nuevas reglas
dosis_recomendada(diente_de_leon, adulto, depuracion, '1 taza 3 veces al dia').
dosis_recomendada(diente_de_leon, niño, depuracion, '1/2 taza 2 veces al dia').

epoca_recoleccion(diente_de_leon, [primavera, verano]).
epoca_recoleccion(ortiga, [primavera]).

interaccion_medicamentosa(ortiga, diureticos, potencia_efecto).
interaccion_medicamentosa(nopal, insulina, potencia_efecto).

tiempo_tratamiento(diente_de_leon, depuracion, '3 semanas').
tiempo_tratamiento(ortiga, anemia, '1 mes').

indicador_calidad(diente_de_leon, color_hojas, 'verde brillante').
indicador_calidad(ortiga, aroma, 'fresco y herbal').