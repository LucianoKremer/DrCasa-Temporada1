class EnfermedadInfecciosa {
	var property cantidadCelulasAmenazadas
	
	method reproducirse(){
		cantidadCelulasAmenazadas *= 2
	}
	
	method atacar(unaPersona){
		unaPersona.subirTemperatura(cantidadCelulasAmenazadas/1000)
	}
	
	method soyAgresivaPara(unaPersona){
		return unaPersona.celulas() * 0.1 < cantidadCelulasAmenazadas
	}
}
