/* Validaciones para todos los formularios */

var inputs = document.getElementsByTagName('input');
for (var i = 0; i < inputs.length; i++){
    inputs[i].addEventListener('keyup', function(){
        if(this.value.length>=1) {
            this.nextElementSibling.classList.add('set');
        } 
        else{
            this.nextElementSibling.classList.remove('set');
        }
    });
}

document.addEventListener("DOMContentLoaded", function () {
    const mobileMenuButton = document.querySelector(".mobile-menu-button");
    const mobileMenu = document.querySelector(".mobile-menu");

    mobileMenuButton.addEventListener("click", function () {
        mobileMenu.classList.toggle("active");
    });
});

// Función para validar el formato del correo electrónico
function validarEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

// Función para validar el formato del teléfono
function validarTelefono(telefono) {
    // Asumiendo que el teléfono debe tener 10 dígitos
    const telefonoRegex = /^\d{10}$/;
    return telefonoRegex.test(telefono);
}
