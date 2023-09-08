class Persona {
	var property enfermedades = []
	var property temperatura = 36
	var property celulas
	var estaEnComa = false 
	
	method contraerEnfermedad(unaEnfermedad){
		enfermedades.add(unaEnfermedad)
	}
	
	method vivirUnDia(){
		enfermedades.map {unaEnfermedad => self.meAfecta(unaEnfermedad)}
	}
	
	method meAfecta(unaEnfermedad){
		unaEnfermedad.atacar(self)
	}
	
	method enfermedadMasDanina() {
		return enfermedades.map { unaEnfermedad => unaEnfermedad.celulasAfectadas() }.max()
	}
	
	method subirTemperatura(unaTemperatura){
		if(temperatura +unaTemperatura >= 45){
			temperatura = 45
			estaEnComa = true
		} else {
			temperatura += unaTemperatura
		}
	}
	
	method perderCelulas(unasCelulas){
		celulas -= unasCelulas	
		if(celulas < 100000){
			estaEnComa = true
			celulas = 100000
			}
	}
	
	method estado() = estaEnComa
	
	method afeccionPorEnfermedadesAgresivas(){
		return self.enfermedadesAgresivas().sum{unaEnfermedad => unaEnfermedad.celulasAfectadas()}
	}
	
	method enfermedadesAgresivas() {
		return enfermedades.filter { unaEnfermedad => unaEnfermedad.soyAgresivaPara(self)}
	}
}

