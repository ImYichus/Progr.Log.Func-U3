transporte(roma,20000).
transporte(londres,25000).
transporte(tunez,15000).

alojamiento(hotel,roma,25000).
alojamiento(hotel,londres,15000).
alojamiento(hotel,tunez,10000).
alojamiento(hotel,roma,15000).
alojamiento(hotel,londres,10000).
alojamiento(hotel,tunez,8000).
alojamiento(camping,roma,10000).
alojamiento(camping,londes,5000).
alojamiento(camping,tunez,5000).

costo_min_alojamiento(Tipo, Ciudad, CostoMin) :-
    findall(Costo, alojamiento(Tipo, Ciudad, Costo), ListaCostos),
    min_list(ListaCostos, CostoMin).

costo_total_viaje(Destino, TipoAlojamiento, Dias, CostoTotal) :-
    transporte(Destino, CostoTransporte),
    costo_min_alojamiento(TipoAlojamiento, Destino, CostoAlojamiento),
    CostoTotal is CostoTransporte + (CostoAlojamiento * Dias).

%costo_total_viaje(roma, hotel, 5, Costo).
%costo_total_viaje(londres, hotel, 3, Costo).
%costo_total_viaje(tunez, camping, 4, Costo).

%--------------------------------------------------------------------------
dias_mes(enero, 31).
dias_mes(febrero, 28).
dias_mes(marzo, 31).
dias_mes(abril, 30).
dias_mes(mayo, 31).
dias_mes(junio, 30).
dias_mes(julio, 31).
dias_mes(agosto, 31).
dias_mes(septiembre, 30).
dias_mes(octubre, 31).
dias_mes(noviembre, 30).
dias_mes(diciembre, 31).

dia_valido(Mes, Dia) :-
    dias_mes(Mes, MaxDias),
    Dia >= 1, Dia =< MaxDias.

signo(capricornio, diciembre, 22, enero, 19).
signo(acuario, enero, 20, febrero, 18).
signo(piscis, febrero, 19, marzo, 20).
signo(aries, marzo, 21, abril, 19).
signo(tauro, abril, 20, mayo, 20).
signo(geminis, mayo, 21, junio, 20).
signo(cancer, junio, 21, julio, 22).
signo(leo, julio, 23, agosto, 22).
signo(virgo, agosto, 23, septiembre, 22).
signo(libra, septiembre, 23, octubre, 22).
signo(escorpio, octubre, 23, noviembre, 21).
signo(sagitario, noviembre, 22, diciembre, 21).

obtener_signo(Dia, Mes, Signo) :-
    dia_valido(Mes, Dia),
    signo(Signo, MesInicio, DiaInicio, MesFin, DiaFin),
    (
        (Mes = MesInicio, Dia >= DiaInicio);
        (Mes = MesFin, Dia =< DiaFin)
    ).

%obtener_signo(15, marzo, Signo).
%obtener_signo(30, febrero, Signo).
%obtener_signo(5, julio, Signo).
%-----------------------------------------------------------------------------

enfermo_de(manuel,gripe).
tiene_sintoma(alicia,cansancio).
sintoma_de(fiebre,gripe).
sintoma_de(tos,gripe).
sintoma_de(cansancio,anemia).
elimina(vitaminas,cansancio).
elimina(aspirinas,fiebre).
elimina(jarabe,tos).

recetar_a(X,Y):-enfermo_de(Y,A),alivia(X,A).
alivia(X,Y):-elimina(X,A),sintoma_de(A,Y).
enfermo_de(X,Y):- tiene_sintoma(X,Z),sintoma_de(Z,Y).
%enfermo_de(alicia, Enfermedad).
%recetar_a(Medicina, manuel).
%recetar_a(Medicina, alicia).