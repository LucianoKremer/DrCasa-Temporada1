import Enfermedad.*

class EnfermedadAutoinmune inherits Enfermedad {
	var property diasAtacando = 0
	
	override method atacarA(unaPersona){
		unaPersona.perderCelulas(cantidadCelulasAmenazadas)
		self.pasoUnDia()
	}
	
	override method soyAgresivaPara(unaPersona){
		return diasAtacando > 30
	}

	method pasoUnDia(){
		diasAtacando++
	}

	
}
