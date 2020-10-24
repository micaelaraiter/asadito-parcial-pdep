class Criterio {
	
	method agregarElementosALaLista(comensal, elementos){
		comensal.cosasCercanas().add(elementos)
	}
	
	method quitarElementosALaLista(comensal, elementos){
		comensal.cosasCercanas().remove(elementos)
	}
	
	method pasarelemento(pasante, pedidor)
	
	method intercambiarLosElementos(pasante, pedidor, elementos){
		self.quitarElementosALaLista(pasante, elementos)
		self.agregarElementosALaLista(pedidor, elementos)		
	}
	
}

class Sorda inherits Criterio {
	
	method pasarElemento(pasante, pedidor){
		const primerElemento = self.primerElemento(pasante)
		self.intercambiarLosElementos(pasante, pedidor, primerElemento)
	
	}
	
	method primerElemento(pasante){
		return pasante.cosasCercanas().first()
	}
}

class Molesto inherits Criterio {
	
	method pasarElemento(pasante, pedidor){
		const todosLosElementos = self.todosLosElementos(pasante)
		self.intercambiarLosElementos(pasante, pedidor, todosLosElementos)	
	}
	
	method todosLosElementos(pasante){
		return pasante.cosasCercanas()
	}
}

class Intercambio inherits Criterio {
	
	method pasarElemento(pasante, pedidor){
		self.cambiarPosiciones(pasante, pedidor)
		const elElementoRequerido = pedidor.elElementoRequerido()
		self.intercambiarLosElementos(pasante, pedidor, elElementoRequerido)		
	}
	
	method cambiarPosiciones(pasante, pedidor){
		const posPasante = pasante.posicion()
		const posPedidor = pedidor.posicion()
		pasante.cambiarDePosicion(posPedidor)
		pedidor.cambiarDePosicion(posPasante)
	}
}

class Decente inherits Criterio {	
	method pasarElemento(pasante, pedidor){
		const elElementoRequerido = pedidor.elElementoRequerido()
		self.intercambiarLosElementos(pasante, pedidor, elElementoRequerido)	
	}
}