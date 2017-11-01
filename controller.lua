local meuContador = require("model")
local view = require('view')

controller = {
    view = nil,
    model = meuContador
}

function controller:draw()
    self.view = view
    self.view:draw(self)
end

function controller:aumentarContagem(event)
    if event.phase == "began" then
        meuContador:aumentar()
        self.view:atualizarContador()
    end
end

return controller