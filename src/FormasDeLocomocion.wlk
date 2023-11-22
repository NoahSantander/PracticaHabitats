object nadar {
	method seSalva(animal) = true 
}
object correr {
	method seSalva(animal) = animal.esIntermedio()
}
object volar {
	method seSalva(animal) = animal.esGrande()
}
object quieto {
	method seSalva(animal) = false
}