/* Validaciones del formulario crear cuenta */

document.addEventListener("DOMContentLoaded", function () {
  const formulario = document.querySelector(".forms");
  const usuario = document.querySelector("#usuario");
  const password = document.querySelector("#password");
  const repetirPassword = document.querySelector("#repeat-password");
  const email = document.querySelector("#email");

  formulario.addEventListener("submit", function (event) {
    event.preventDefault();

    // Si el formulario es válido, lo informa en pantalla
    validarFormulario() ? (alert('¡Datos enviados correctamente!'), this.reset()) : null;

    // Si el formulario es válido, consola y pantalla
    //validarFormulario() ? (console.log("Formulario válido. Enviando datos..."), 
    //alert('¡Datos enviados correctamente!'), this.reset()) : null;
  });

  function validarFormulario() {
    const porFavorIngrese = "Por favor, ingrese ";
    let esValido = true;

    // Valida el campo usuario
    usuario.value.trim() === "" ? (esValido = false, alert(`${porFavorIngrese} el usuario`), 
    usuario.focus()) : null;

    // Valida el campo contraseña
    (esValido && password.value.trim() === "") ? (esValido = false, alert(`${porFavorIngrese} su contraseña.`), password.focus()) : null;

    // Valida el campo repetir contraseña
    if (esValido) {
      if (repetirPassword.value.trim() === "") {
        esValido = false;
        alert(`${porFavorIngrese} la repeticion de su contraseña.`);
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
        alert(`${porFavorIngrese} su dirección de correo electrónico.`);
        email.focus();
      } else if (!validarEmail(email.value)) {
        esValido = false;
        alert("El formato del correo electrónico no es válido.");
        email.focus();
      }
    }

    return esValido;
  }
});
