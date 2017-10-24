local meuContador = require("model")
controller = {
    view = nil,
    model = meuContador
}



function controller:inicializar(view)
    self.view = view
    print("view")
    print(self.view)
    return self
end

function controller.aumentarContagem(event)
    if event.phase == "began" then
        meuContador:aumentar()
        controller.view:atualizarContador()
    end
end

return controller