object jeanGray {
	const peso = 65
	const puedeLlamar = true

	method peso() = peso
	method puedeLlamar() = puedeLlamar

	method puedeEntregar(paquete, direccion){
		return paquete.puedeEntregar(direccion, self)
	}
}

object neo {
	const peso = 0
	var property credito = 10

	method peso() = peso 
	method puedeLlamar() = credito > 0

	method puedeEntregar(paquete, direccion){
		return paquete.puedeEntregar(direccion, self)
	} 
}

object saraConnors {
	var property vehiculo = moto
	var peso = 50 

	method puedeLlamar() = false
	method peso() = peso + vehiculo.peso()

	method peso(_peso) {
	  peso = _peso
	}
	method puedeEntregar(paquete, direccion){
		return paquete.puedeEntregar(direccion, self)
	}
}

object paquete {
	var property estaPago = true

	method puedeEntregar(direccion, mensajero){
		return direccion.puedePasar(mensajero.peso(), mensajero) && estaPago
	}
}

object puenteDeBrocklyn {
	var property pesoPermitido = 1000

	method puedePasar(peso, mensajero){
		return peso <= pesoPermitido
	} 
}

object matrix {
  method puedePasar(peso, mensajero) {
	return mensajero.puedeLlamar()
  }
}

object moto {
	method peso() = 100 
}

object camion {
	var property cantDeAcoplados = 0
	method peso() = 500 + (cantDeAcoplados * 500) 
}

object paqueteNulo {
  method puedeEntregar(paquete, destino, empleado) {
	return false
  }
}