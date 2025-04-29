object nave {
    const pasajeros = []
    method cantidadPasajeros() = pasajeros.size()
    method mayorVitalidad() = pasajeros.max({p => p.vitalidad()})
    method estaEquilibrada() = self.mayorVitalidad() < self.menorVitalidad()
    method menorVitalidad() = pasajeros.min({p => p.vitalidad()})
    method estaElElegido() = pasajeros.any({p => p.esElElegido()})

    method chocar() {
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()   
    }
    method acelerar() {
        self.noElegidos().forEach({p => p.saltar()})
    }
    method noElegidos() = pasajeros.filter({p => !p.esElElegido()})
}

object neo {
    var energia = 100

    method energia() = energia
    method energia(unaCantidad) {
        energia += unaCantidad
    }

    method saltar() { energia = 0.max(energia / 2) }
    method vitalidad() = energia * 0.1
    method esElElegido() = true
}

object morfeo {
    var vitalidad = 8
    var estaCansado = false
    method vitalidad() = vitalidad
    method vitalidad(unaCantidad){ vitalidad += unaCantidad }

    method saltar() {
        vitalidad = 0.max(vitalidad - 1)
        estaCansado = !estaCansado
    }
    method esElElegido() = false
}

object trinity {
    method esElElegido() = false
    method vitlidad() = 0
    method saltar() {}
}