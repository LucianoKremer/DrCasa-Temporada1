class EnfermedadAutoinmune {
	var property cantidadCelulasAmenazadas 
	var property diasAtacando = 0
		
	method reproducirse(){
		cantidadCelulasAmenazadas = cantidadCelulasAmenazadas*2
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
