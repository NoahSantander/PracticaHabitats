import Habitats.*

object reserva {
	const habitats = #{}
	
	method habitatMasPoblado() = habitats.max({ habitat => habitat.cantidadDeOrganismosVivos() })
	
	method biomasaTotal() = habitats.sum({ habitat => habitat.cantidadDeBiomasa() })
	
	method especieUniversal(especie) = habitats.all({ habitat => habitat.habita(especie) })
	
	method algunoNoEnEquilibrio() = habitats.any({ habitat => !habitat.estaEnEquilibrio() })
	
	method incendio(habitat) {
		habitat.sufrirIncendio()
	}
}