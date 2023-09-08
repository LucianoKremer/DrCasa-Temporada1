class EnfermedadAutoinmune {
	var property cantidadCelulasAmenazadas
	var property diasAtacando
		
	method reproducirse(){
		cantidadCelulasAmenazadas = cantidadCelulasAmenazadas*2
	}
	
	method celulasAfectadas(){
		return cantidadCelulasAmenazadas
	}
	
	method atacar(unaPersona){
		unaPersona.perderCelulas(cantidadCelulasAmenazadas)
	}
	
	method diasAtacando() = diasAtacando
	
	method pasoUnDia(){
		diasAtacando++
	}
	
}
