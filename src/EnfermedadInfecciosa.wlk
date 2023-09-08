class EnfermedadInfecciosa {
	var property cantidadCelulasAmenazadas
	
	method reproducirse(){
		cantidadCelulasAmenazadas = cantidadCelulasAmenazadas*2
	}
	
	method celulasAfectadas(){
		return cantidadCelulasAmenazadas
	}
	
	method atacar(unaPersona){
		unaPersona.subirTemperatura(cantidadCelulasAmenazadas/1000)
	}
	
	method diasAtacando() = 0
	
	method pasoUnDia()
}
