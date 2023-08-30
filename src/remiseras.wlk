/*
 * definir remiseras y clientes.
 */

import personas.*


object roxana {
	method precioViaje(persona, valorKilometro) = persona.precioViaje() * valorKilometro
}

object gabriela {
	method precioViaje(persona, valorKilometro) = persona.precioViaje() * valorKilometro * 1.2
}

object mariela {
	method precioViaje(persona, valorKilometro) = 50.max(persona.precioViaje() * valorKilometro)
	
}

object juana {
	method precioViaje(persona, valorKilometro){
		if(valorKilometro <= 8){
			return 100
		}
		else{
			return 200
		}
	}
}

object lucia {
	var estaReemplazando
	method estaReemplazando() = estaReemplazando
	method estaReemplazando(remiseria){
		if(self == remiseria)
			self.error("No se puede reemplazar a si mismo")
		estaReemplazando = remiseria
	}
	method precioViaje(persona, valorKilometro) = estaReemplazando.precioViaje(persona, valorKilometro)
}








