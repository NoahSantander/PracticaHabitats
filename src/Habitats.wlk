import SeresVivos.*

class Habitat {
	const habitantes = []
	
	method organismosVivos() = habitantes.filter({ habitante => habitante.estaVivo() })
	method organismosGrandes() = habitantes.filter({ habitante => habitante.esGrande() })
	
	method cantidadDeOrganismosVivos() = self.organismosVivos().size()
	method cantidadDeOrganismosMuertos() = habitantes.size() - self.cantidadDeOrganismosVivos()
	method cantidadDeOrganismosGrandes() = self.organismosGrandes().size()
	
	method cantidadDeBiomasa() = self.organismosVivos().sum({ organismo => organismo.biomasa() })
	
	method todasLasEspeciesDelHabitat() = habitantes.map({ habitante => habitante.especie() })
	method habita(especie) = self.todasLasEspeciesDelHabitat().contains(especie) 
	
	method masVida() = self.cantidadDeOrganismosVivos() > self.cantidadDeOrganismosMuertos()
	method mayorCantidadChicos() = self.cantidadDeOrganismosGrandes() < (self.cantidadDeOrganismosVivos() / 3)
	
	method estaEnEquilibrio() = self.mayorCantidadChicos() && self.masVida()
	
	method sufrirIncendio() {
		habitantes.forEach({ habitante => habitante.sufrirConsecuencuas() })
	}
}
