/* Validaciones del formulario contactos */

document.addEventListener("DOMContentLoaded", function () {
  const formulario = document.querySelector(".forms");
  const nombre = document.querySelector("#nombre");
  const apellido = document.querySelector("#apellido");
  const email = document.querySelector("#email");
  const asunto = document.querySelector("#asunto");
  const telefono = document.querySelector("#telefono");
  const mensaje = document.querySelector("#mensaje");

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

    // Valida el campo nombre
    if (nombre.value.trim() === "") {
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

    // Valida el campo asunto
    if ((esValido) && (asunto.value.trim() === "")) {
      esValido = false;
      alert(porFavorIngrese + "el asunto.");
      asunto.focus();
    }

    // Valida el campo teléfono (opcional)
    if (esValido) {
      if (!validarTelefono(telefono.value)) {
        esValido = false;
        alert("El formato del teléfono no es válido.");
        telefono.focus();
      }
    }

    // Valida el campo mensaje
    if ((esValido) && mensaje.value.trim() === "") {
      esValido = false;
      alert(porFavorIngrese + "un mensaje.");
      mensaje.focus();
    }

    return esValido;
  }

});
