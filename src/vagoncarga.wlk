class VagonCarga {

	var property cargaMaxima = 0

	constructor(cargaMaxima_) {
		cargaMaxima = cargaMaxima_
	}

	method calcularPesoMaximo() {
		return cargaMaxima + 160
	}

}

