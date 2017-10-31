view = {
    controlador = nil,
    meuContadorVisual = nil
}

function view:draw(controlador)
    self.controlador = controlador
   
    controlador:inicializar(self)
    self:desenharBotao()
    self:desenharContador()
end

function view:desenharBotao()
    local meuRetangulo = display.newRect(100,100,50,50)
    meuRetangulo:addEventListener("touch", self.controlador.aumentarContagem)
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