class BandejaDeComida {
	
	const property esCarne
	const property calorias
	
	method esDietetico(){
	  return calorias < 500
	}
	
	method esPesada(){
		return !self.esDietetico()
	}
}


object vegetariano{
		
	method puedeComer(bandejaDeComida){
		return bandejaDeComida.esCarne()		
	}
	
}


object dietetico{
	
	method puedeComer(bandejaDeComida){
		return bandejaDeComida.esDietetico()
	}
	
}


class Alternado{
	var ultimaVez = true
	method puedeComer(bandejaDeComida){
		self.cambiarUltimaVez()
		return ultimaVez
	}
	
	method cambiarUltimaVez(){
	   ultimaVez = !ultimaVez
	}
	
}

object combinado{
	const vegan = vegetariano
	const diet = dietetico
	const alternado = new Alternado()
	
	method puedeComer(bandejaDeComida){
	  return self.cumpleTodasLasCondiciones(bandejaDeComida)
	}
	
	method cumpleTodasLasCondiciones(bandejaDeComida){
		return vegan.puedeComer(bandejaDeComida) && diet.puedeComer(bandejaDeComida) && alternado.puedeComer(bandejaDeComida)
	}
}

