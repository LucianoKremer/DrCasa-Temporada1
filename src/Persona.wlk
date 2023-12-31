import Enfermedad.*

class Persona {
	var property enfermedades = #{}
	var property temperatura = 36
	var property celulas
	
	method contraerEnfermedad (unaEnfermedad) {
		enfermedades.add (unaEnfermedad)
	}
	
	method vivirUnDia () {
		enfermedades.forEach { unaEnfermedad => unaEnfermedad.atacarA(self) }
	}

        method vivirUnosDias (unosDias) {
                unosDias.times({ dia => self.vivirUnDia() })
        }


	method enfermedadMasDanina() {
		return enfermedades.max { unaEnfermedad => unaEnfermedad.cantidadCelulasAmenazadas() }
	}
	
	method subirTemperatura (unaTemperatura) {
		temperatura = 45.min (temperatura+unaTemperatura)
	}
	
	method perderCelulas (unasCelulas) {
		celulas = 0.max (celulas - unasCelulas)	
	}
	
	method estaEnComa () = celulas <= 1000000 || temperatura == 45
	
	method afeccionPorEnfermedadesAgresivas () {
		return self.enfermedadesAgresivas().sum { unaEnfermedad => unaEnfermedad.cantidadCelulasAmenazadas() }
	}
	
	method enfermedadesAgresivas () {
		return enfermedades.filter { unaEnfermedad => unaEnfermedad.soyAgresivaPara(self)}
	}
	
	method recibirDosis (unaDosis) {
		enfermedades.forEach { unaEnfermedad => unaEnfermedad.debilitarsePor (unaDosis, self) }
	}
	
	method seCuroDe (unaEnfermedad) {
		enfermedades.remove(unaEnfermedad)
	}
	
	method morir (){
		temperatura = 0
	}
	
	method estaMuerto() = temperatura == 0
}

