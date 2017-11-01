local controller = require('controller')
routes = {
    pessoa={
        name = controller,
        path = {"adicionar", "remover"}
        
    }
}

function routes:navigate(rota, path)

    if routes[rota] ~= nil then
        routes[rota].name[path]()
    end

end

return routes