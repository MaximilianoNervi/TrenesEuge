import vagonpasajero.*
import vagoncarga.*
import locomotora.*

class Formacion {

	var property vagones = []
	var property locomotoras = []

	// constructor (vagones_){
	// vagones = vagones_
	// }
	method cantidadDeVagonesLivianos() = vagones.count({ vagonesLivianos => vagonesLivianos.pesoMaximo() < 2500 })

	method velocidadMaximaDeFormacion() {
		return locomotoras.min({ velocidadLenta => velocidadLenta.velocidadMaxima() }).velocidadMaxima()
	}
	method agregarLocomotora(locomotora){
		locomotoras.add(locomotora)
	}
}

