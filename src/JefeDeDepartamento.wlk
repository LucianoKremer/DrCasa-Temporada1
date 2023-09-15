import Medico.*

class JefeDeDepartamento inherits Medico (dosis = 0) {
	
	const property subordinados = #{}
	
	override method atenuarEnfermedadDe (unaPersona) {
		subordinados.anyOne().atenuarEnfermedadDe(unaPersona)
	}
	
	 method agregarSubordinado (unMedico) {
        subordinados.add(unMedico)
    }
}
