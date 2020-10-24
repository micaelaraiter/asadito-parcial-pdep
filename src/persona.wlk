/** First Wollok example */
class persona {
	var criterio
	var property cosasCercanas = []
	var property elElementoRequerido
	var posicion
	
	method pedirCosa(otroComensal, elementoRequerido) {
		elElementoRequerido = elementoRequerido
		otroComensal.pasarCosa(self)
	}
	
	method pasarCosa(pedidor){
		const pasante = self
		criterio.pasarElemento(pasante, pedidor)
	}
	
	method posicion() {
		return posicion
	}
	
	method cambiarDePosicion(nuevaPosicion){
		posicion = nuevaPosicion
	}
}


