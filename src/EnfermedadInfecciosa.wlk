import Enfermedad.*

class EnfermedadInfecciosa inherits Enfermedad {
	
	method reproducirse(){
		cantidadCelulasAmenazadas *= 2
	}
	
	override method atacarA(unaPersona){
		unaPersona.subirTemperatura(cantidadCelulasAmenazadas/1000)
	}
	
	override method soyAgresivaPara(unaPersona){
		return unaPersona.celulas() * 0.1 < cantidadCelulasAmenazadas
	}
}
