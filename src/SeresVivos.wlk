class SerVivo {
	var estaVivo = true
	const especie
	const edad
	
	method especie() = especie
	method estaVivo() = estaVivo
	method calcularBiomasa()
	method biomasa() = if(estaVivo) self.calcularBiomasa() else 0
	
	method morir() {
		estaVivo = false
	}
	
	method esChiquito()
	method esGrande() = !self.esChiquito()
	
	method sufrirConsecuencias()
}

class Fauna inherits SerVivo {
	var peso
	const formaDeLocomocion
	
	method perderPeso(porcentaje) {
		peso *= porcentaje
	}
	
	override method calcularBiomasa() = peso  + edad
	
	override method esChiquito() = peso < 30
	
	override method esGrande() = peso > 60 && edad > 10
	
	method esIntermedio() = !self.esChiquito() && !self.esGrande()
	
	override method sufrirConsecuencias() {
		self.perderPeso(0.1)
		if(!formaDeLocomocion.seSalva(self))
			self.morir()
	}
}

class Flora inherits SerVivo {
	var altura
	
	override method calcularBiomasa() = edad
	
	override method esChiquito() = altura < 10
	
	method reducirAltura(longitud) {
		altura -= longitud
	}
	
	override method sufrirConsecuencias() {
		if(self.esChiquito())
			self.morir()
		else
			self.reducirAltura(5)
	}
}