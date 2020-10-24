class Sorda{	
	method pasarElemento(pasante, pedidor){
		const primerElemento = pasante.primerElemento()
		pasante.intercambiarLosElementos( pedidor, primerElemento)
	
	}	
}

class Molesto {	
	method pasarElemento(pasante, pedidor){
		const todosLosElementos = pasante.todosLosElementos()
		pasante.intercambiarLosElementos(pedidor, todosLosElementos)	
	}
	
}

class Intercambio{
	
	method pasarElemento(pasante, pedidor){
		pasante.cambiarPosiciones(pedidor)
		const elElementoRequerido = pedidor.elElementoRequerido()
		pasante.intercambiarLosElementos(pedidor, elElementoRequerido)		
	}

}

class Decente {	
	method pasarElemento(pasante, pedidor){
		const elElementoRequerido = pedidor.elElementoRequerido()
		pasante.intercambiarLosElementos(pedidor, elElementoRequerido)	
	}
}