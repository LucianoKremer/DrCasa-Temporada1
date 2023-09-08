
class Persona {
	var property enfermedades = []
	var property temperatura = 36
	var property celulas
	
	method contraerEnfermedad(unaEnfermedad){
		enfermedades.add(unaEnfermedad)
	}
	
	method vivirUnDia(){
		enfermedades.forEach {unaEnfermedad => self.meAfecta(unaEnfermedad)}
	}
	
	method meAfecta(unaEnfermedad){
		unaEnfermedad.atacar(self)
	}
	
	method enfermedadMasDanina() {
		return enfermedades.max { unaEnfermedad => unaEnfermedad.celulasAfectadas() }
	}
	
	method subirTemperatura(unaTemperatura){
		if(temperatura +unaTemperatura >= 45){
			temperatura = 45
		} else {
			temperatura += unaTemperatura
		}
	}
	
	method perderCelulas(unasCelulas){
		celulas -= unasCelulas	
		if(celulas < 1000000){
			celulas = 1000000
			}
	}
	
	method estaEnComa() = celulas == 1000000 || temperatura == 45
	
	method afeccionPorEnfermedadesAgresivas(){
		return self.enfermedadesAgresivas().sum{unaEnfermedad => unaEnfermedad.celulasAfectadas()}
	}
	
	method enfermedadesAgresivas() {
		return enfermedades.filter { unaEnfermedad => unaEnfermedad.soyAgresivaPara(self)}
	}
}

