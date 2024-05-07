/*
var inputs = document.getElementsByTagName('input');
for (var i = 0; i < inputs.length; i++){
    inputs[i].addEventListener('keyup', function(){
        if(this.value.length>=1){
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
*/

/* Validaciones del formulario crear cuenta */

document.addEventListener("DOMContentLoaded", function () {
  const formulario = document.querySelector(".forms");
  const usuario = document.querySelector("#usuario");
  const nombre = document.querySelector("#nombre");
  const apellido = document.querySelector("#apellido");
  const password = document.querySelector("#password");
  const repetirPassword = document.querySelector("#repeat-password");
  const email = document.querySelector("#email");
  const telefono = document.querySelector("#telefono");
  const comentario = document.querySelector("#comentario");

  formulario.addEventListener("submit", function (event) {
      event.preventDefault();
      if (validarFormulario()) {
          // Si el formulario es válido, puedes enviar los datos
          console.log("Formulario válido. Enviando datos...");

      // Si el formulario es válido, lo informa en pantalla
      alert('¡ Datos enviados correctamente !');

      // Hace un reset de los campos
      this.reset(); 
      }
  });

  function validarFormulario() {
      const porFavorIngrese = "Por favor, ingrese "; 
      let esValido = true;

      // Valida el campo usuario
      if (usuario.value.trim() === "") {
        esValido = false;
        alert(porFavorIngrese + "un usuario.");
        usuario.focus();
      }
      
      // Valida el campo nombre
      if ((esValido) && (nombre.value.trim() === "")) {
        esValido = false;
        alert(porFavorIngrese + "su nombre.");
        nombre.focus();
        }

      // Valida el campo apellido
      if ((esValido) && (apellido.value.trim() === "")) {
        esValido = false;
        alert(porFavorIngrese + "su apellido.");
        apellido.focus();
      }

      // Valida el campo contraseña
      if ((esValido) && (password.value.trim() === "")) {
        esValido = false;
        alert(porFavorIngrese + "su contraseña.");
        password.focus();
      }

      // Valida el campo repetir contraseña
      if (esValido) {
        if (repetirPassword.value.trim() === "") {
          esValido = false;
          alert(porFavorIngrese + "la repeticion de su contraseña.");
          repetirPass.focus();
        } else if (!(password.value.trim() === repetirPassword.value.trim())) {
          esValido = false;
          alert("Las dos contraseñas no coinciden.");
          repetirPassword.focus();
        }
      }

      // Valida el campo email
      if (esValido) {
        if (email.value.trim() === "") {
          esValido = false;
          alert(porFavorIngrese + "su dirección de correo electrónico.");
          email.focus();
        } else if (!validarEmail(email.value)) {
          esValido = false;
          alert("El formato del correo electrónico no es válido.");
          email.focus();
        }
      }

      // Valida el campo teléfono (opcional)
      if (esValido) {
        if (telefono.value.trim() === "") {
          esValido = false;
          alert(porFavorIngrese + "su numero de telefono.");
          telefono.focus();
        } else if (!validarTelefono(telefono.value)) {
          esValido = false;
          alert("El formato del teléfono no es válido.");
          telefono.focus();
        }
      }

      // Valida el campo comentario
      if ((esValido) && comentario.value.trim() === "") {
        esValido = false;
        alert(porFavorIngrese + "un comentario.");
        comentario.focus();
      }

      return esValido;
  }

});
