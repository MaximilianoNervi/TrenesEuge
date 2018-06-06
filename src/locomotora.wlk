class Locomotora {

	var property peso
	var property pesoMaximo
	var property velocidadMaxima

	constructor(pesoMaximo_, peso_,velocidadMaxima_) {
		pesoMaximo = pesoMaximo_
		peso = peso_
		velocidadMaxima = velocidadMaxima_
	}

	method pesoMaximoQueArrastra() {
		return pesoMaximo - peso
	}
	
	

}

