/** First Wollok example */
import criterio.*
import comida.*

class Persona {
	var criterio
	var property cosasCercanas = []
	var property elElementoRequerido
	var posicion
	var tipoDeComida
	const comida = []
		
	method pasarUnElementoA(elemento, persona){
		criterio.pasarUnElemento(self,elemento, persona)
	}
	
	method posicion() {
		return posicion
	}
	
	method cambiarDePosicion(nuevaPosicion){
		posicion = nuevaPosicion
	}
	
    method cambiarPosiciones(pedidor){
		const posPasante = self.posicion()
		const posPedidor = pedidor.posicion()
		self.cambiarDePosicion(posPedidor)
		pedidor.cambiarDePosicion(posPasante)
	}
	
	method todosLosElementos(){
		return cosasCercanas
	}
	
 	method primerElemento(){
		return cosasCercanas.first()
	}
	
	method intercambiarLosElementos(pedidor, elementos){
		const pasante = self
		self.quitarElementosALaLista(pasante, elementos)
		self.agregarElementosALaLista(pedidor, elementos)		
	}
	
	method agregarElementosALaLista(comensal, elementos){
		comensal.cosasCercanas().add(elementos)
	}
	
	method quitarElementosALaLista(comensal, elementos){
		comensal.cosasCercanas().remove(elementos)
	}
	
	///Punto 2
	method quiereComer(bandejaDeComida){
		if(self.puedeComer(bandejaDeComida)){
			self.agregarComida(bandejaDeComida)
		}
	}
	
	method puedeComer(bandejaDeComida) {
		return tipoDeComida.puedeComer(bandejaDeComida)
	}
	
	method agregarComida(bandejaDeComida){
		comida.add(bandejaDeComida)
	}
	
}


