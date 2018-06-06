class VagonPasajero {

	var property ancho
	var property metrosDeLargo

	constructor(ancho_, metrosDeLargo_) {
		ancho = ancho_
		metrosDeLargo = metrosDeLargo_
	}

	method calcularCantidadDePasajeros() {
		if (ancho < 2.5) {
			return metrosDeLargo * 8
		} else {
			return metrosDeLargo * 10
		}
	}

	method calcularPesoMaximo() {
		return self.calcularCantidadDePasajeros() * 80
	}

}

