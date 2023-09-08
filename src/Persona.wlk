
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
		unaEnfermedad.pasoUnDia()
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
		}
		
	}
	
	method estado() = estaEnComa
	
	method afeccionPorEnfermedadesAgresivas(){
		return enfermedades.filter { unaEnfermedad => self.esAgresiva(unaEnfermedad) }.sum()
	}
	
	method esAgresiva(unaEnfermedad) = unaEnfermedad.diasAtacando() > 30 || unaEnfermedad.celulasAfectadas() > celulas * 0.1
	
}
