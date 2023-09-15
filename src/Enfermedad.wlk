
class Enfermedad {
	
	var property cantidadCelulasAmenazadas
	
	method debilitarsePor (unaDosis, unaPersona) {
		self.atenuarmeEn(unaDosis)
		self.validarEstadoDe(unaPersona)
	}
	
	method atenuarmeEn(unaDosis){
		cantidadCelulasAmenazadas -= unaDosis*15
	}
	
	method validarEstadoDe(unaPersona){
		if(cantidadCelulasAmenazadas <= 0){
			unaPersona.seCuroDe(self)
		}
	}

	method atacarA(unaPersona)
	method soyAgresivaPara(unaPersona)
	
}

object muerte {    
    method cantidadCelulasAmenazadas() {
        return 0
    }

    method debilitarsePor(_unaPersona, _unaDosis) {
        // No hace nada porque no se atenua
    }

    method atacarA(unaPersona) {
        unaPersona.morir()
    }

    method soyAgresivaPara(_unaPersona) {
        return true
    }
}

class HIV {
    const autoinmune
    const infecciosa
    
    method cantidadCelulasAmenazadas() {
        return autoinmune.cantidadCelulasAmenazadas() + infecciosa.cantidadCelulasAmenazadas()
    }

    method debilitarsePor(unaDosis, unaPersona) {
        infecciosa.debilitarsePor(unaDosis, unaPersona)
        autoinmune.debilitarsePor(unaDosis, unaPersona)
    }

    method atacarA(unaPersona) {
        infecciosa.atacarA(unaPersona)
        autoinmune.atacarA(unaPersona)
    }

    method esAgresivaPara(unaPersona) {
        return infecciosa.esAgresivaPara(unaPersona) && autoinmune.esAgresivaPara(unaPersona)
    }
}
