//llenar el formulario cuando haga click en el boton editar

function llenarFormulario(fila){
    //busca las clases codigo,nombre,edad,categoria que esta en el tbody del archivo cliente.jsp
    var codigo=$(fila).find(".codigo").text();
    var nombre=$(fila).find(".nombre").text();
    var apellido=$(fila).find(".apellido").text();
    var edad=$(fila).find(".edad").text();
    var salario=$(fila).find(".salario").text();
    var area=$(fila).find(".area").text();
    //llenar los controles del formulario:
    $("#txtCodigo").val(codigo);
    $("#txtNombre").val(nombre);
    $("#txtApellido").val(apellido);
    $("#txtEdad").val(edad);
    $("#txtSalario").val(salario);
    $("#txtArea").val(area);
}

//hidden.bs.modal -> el evento se dispara despues de que la ventana modal se a ocultado completamente.
$("#exampleModal").on("hidden.bs.modal",function(){
    //Limpiando el fomulario 
    $('form')[0].reset();
});

$(document).ready(function(){
   $(document).on('click','.btnEditar',function(){
     llenarFormulario($(this).closest('tr'));     
      $('.btnOcultar1').attr('disabled','disabled');
      $('.btnOcultar3').attr('disabled','disabled');
       $('.btnOcultar2').removeAttr('disabled');
   }); 
    $(document).on('click','.btnEliminar',function(){
       llenarFormulario($(this).closest('tr'));
       $('.btnOcultar1').attr('disabled','disabled');
       $('.btnOcultar2').attr('disabled','disabled');
       $('.btnOcultar3').removeAttr('disabled');
    });
     $(document).on('click', '.btnAdd', function(){
        $('.btnOcultar3').attr('disabled', 'disabled');
        $('.btnOcultar2').attr('disabled', 'disabled');
        $('.btnOcultar1').removeAttr('disabled');
    });
});

    
