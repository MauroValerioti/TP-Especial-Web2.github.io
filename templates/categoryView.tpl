<!DOCTYPE html>
        <html lang="en">
        <head>
            <base href="'.BASE_URL.'" />
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="../css/index.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        </head>
    <body>

    {if $categoria}

    <h1>{$titulo} : {$categoria[0]->nombre}</h1>

    {foreach from=$categoria item=$producto}
    
                <div>
                    <ul>
                        <li>Id: {$producto->id_categoria}</li> 
                        <li>Nombre: {$producto->producto}</li> 
                        <li>Descripcion: {$producto->descripcion}</li> 
                        <li>Precio: ${$producto->precio}</li>
                    </ul>
                </div>
                <div>
                    <img class="imagen" src="{$producto->imagen}" alt="cosa">
                </div>
                <br>
    {/foreach}
    {else}
        <h2>No existen productos en esta Categoria!</h2>
    {/if}
    
    <a class="btn btn-primary" href="../home">volver</a>

{include file="templates/footer.tpl"}
