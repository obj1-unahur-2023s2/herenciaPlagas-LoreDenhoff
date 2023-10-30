
class Plaga{
	const poblacion
	
	method nivelDanio()
	method transmiteEnfermedad()= poblacion>= 10
	method efectoAtaque()= poblacion*0.1
	method atacar(elemento){
		self.efectoAtaque()
		elemento.efectoAtaque(self)
	}
	
}

class Cucaracha inherits Plaga{
	const peso
	
	override method nivelDanio()=  poblacion/2
	override method transmiteEnfermedad()= super() && peso >= 10
}

class Mosquito inherits Plaga{
	override method nivelDanio()= poblacion
	override method transmiteEnfermedad()= super() && poblacion % 3 == 0
}

class Pulgas inherits Plaga{
	override method nivelDanio()= poblacion*2
	override method efectoAtaque()= super() + 2
}


class Garrapatas inherits Pulgas{
	override method efectoAtaque()= poblacion*0.2
}