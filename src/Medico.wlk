import Persona.*

class Medico inherits Persona {
	
	const property dosis
	
	method atenuarEnfermedadDe (unaPersona) {
		unaPersona.recibirDosis(dosis)
	}
	
	override method contraerEnfermedad (unaEnfermedad){
		enfermedades.add (unaEnfermedad)
		self.atenuarEnfermedadDe(self)
	}
	
}
