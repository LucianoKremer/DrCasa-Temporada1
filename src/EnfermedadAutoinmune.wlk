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
		self.pasoUnDia()
	}
	
	method soyAgresivaPara(unaPersona){
		return diasAtacando > 30
	}

	method pasoUnDia(){
		diasAtacando++
	}
	
}
