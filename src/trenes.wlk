class Formacion {
	var property vagones = []
	var property locomotoras = []
	var property velocidadMaxima = []
	
	method agregarVagon(vagon){
		vagones.add(vagon)
	}
	
	method agregarLocomotora(locomotora){
		locomotoras.add(locomotora)
	}
	
	method calcularVagonesLivianos(){
		return vagones.count{vagon => vagon.pesoMaximo() < 2500 }
	}
	
	method velocidadMaxima(){
		return locomotoras.min{loc => loc.velocidadMaxima()}
	}
	
	method esEficiente(){
		return locomotoras.any({loco => !loco.esEficiente() })
	}
	
	method pesoArrastradoTotal(){
		return locomotoras.sum{loco => loco.pesoMaximoQuePuedeArrastrar()}
	}
	
	method pesoTotal(){
		return vagones.sum{vagon => vagon.pesoMaximo()}
	}
	
	method esUtil(){
		return self.pesoArrastradoTotal()>= self.pesoTotal()
	}	
	
	method cuantosKilosFaltanParaMoverse(){
		if (self.pesoArrastradoTotal() >= self.pesoTotal()){
			return 0
			}else{
				return self.pesoTotal() - self.pesoArrastradoTotal()
		}
	}
	
	method vagonMasPesado(){
		
	}
}

class Locomotora {
	var property peso
	var property pesoMaximoQuePuedeArrastrar
	var property velocidadMaxima
	
	constructor (_p, _pm, _vm){
		peso = _p
		pesoMaximoQuePuedeArrastrar = _pm
		velocidadMaxima = _vm
	}
	
	method arrastreUtil(){
		return pesoMaximoQuePuedeArrastrar - peso
	}
	
	method esEficiente(){
		if(self.peso * 5 < self.pesoMaximoQuePuedeArrastrar){
			return true
		}else{
			return false
		}
	}
}

class VagonDePasajeros{
	
	var property metrosDeLargo 
	var property anchoUtil
	
	constructor(_largo, _ancho){
		metrosDeLargo = _largo
		anchoUtil = _ancho
	}
	
	method cantidadDePersonasQuePuedeTransportar(){
		if(anchoUtil < 2.5){
			return metrosDeLargo * 8
		} else {
			return metrosDeLargo * 10
		}
	}
	
	method pesoMaximo(){
		return self.cantidadDePersonasQuePuedeTransportar() * 80
	}
}

class VagonDeCarga{
	var property cargaMaxima
	
	constructor(_carga){
		cargaMaxima = _carga
	}
	
	method pesoMaximo(){
		return cargaMaxima * 160
	}
	
}