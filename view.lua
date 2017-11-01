view = {
    controlador = nil,
    meuContadorVisual = nil
}

function view:draw(controlador)
    self.controlador = controlador
    self:desenharBotao()
    self:desenharContador()
end

function view:desenharBotao()
    local meuRetangulo = display.newRect(100,100,50,50)
    local _self = self
    function meuRetangulo:touch(event)
        _self.controlador:aumentarContagem(event)
    end

    meuRetangulo:addEventListener("touch")
end

function view:desenharContador()
    self.meuContadorVisual = display.newText(
        {text = 'Contador: '..self.controlador.model.contagem,
        x = 100,
        y = 50})
end

function view:atualizarContador()
    self.meuContadorVisual.text = 'Contador: '..self.controlador.model.contagem
end

return view