import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method bonoPresentismo() = bonoPresentismo
	method bonoResultado() = bonoResultado	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	method categoria(unaCategoria){categoria = unaCategoria}
	method bonoPresentismo(unBono){bonoPresentismo = unBono}
	method bonoResultado(unBono){bonoResultado = unBono}
	method cantidadDeFaltas(faltas){cantidadDeFaltas = faltas}
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto() 
		+ self.bonoPresentismo().monto(self)
		+ self.bonoResultado().monto(self)
			/* + el bono por presentismo */
			/* + el bono por resultado */
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
}
