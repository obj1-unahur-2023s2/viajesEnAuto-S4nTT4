object ludmila {
	method precioViaje() = 18
}

object anaMaria{
	var estaEstable = true
	
	method estaEstable() = estaEstable
	
	method cambiarEstabilidad() {
		estaEstable = not estaEstable
	} 
	method precioViaje(){
		if (estaEstable) {
			return 30			
		} else {		
			return 25
		}
	}
}

object teresa{
	var property precioViaje = 22
	//var precio = 22
	//method precio() = precio // Getter
	//method precio(nuevoPrecio) { // Setter
	//	precio = nuevoPrecio 
	//}
	
}

object melina{
	var trabajaPara
	method precioViaje(){
		return trabajaPara.precioViaje() - 3
	}
	method trabajaPara(persona){
		if(self == persona)
			self.error("No se puede reemplazar a si misma")
			trabajaPara = persona
	}
}
