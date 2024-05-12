/*  Validaciones del formulario recuperar usuario o password  */

document.addEventListener("DOMContentLoaded", function () {
  const formulario = document.querySelector(".forms");
  const email = document.querySelector("#email");

  formulario.addEventListener("submit", function (event) {
    event.preventDefault();

    /*
    if (validarFormulario()) {
      // Si el formulario es válido, puedes enviar los datos
      console.log("Formulario válido. Enviando datos...");

      // Si el formulario es válido, lo informa en pantalla
      alert('¡ Datos enviados correctamente !');

      // Hace un reset de los campos
      this.reset(); 
    }
    */

    // Si el formulario es válido, lo informa en pantalla
    validarFormulario() ? (alert('¡Datos enviados correctamente!'), this.reset()) : null;
    // Aqui se agrega un console.log 
    //validarFormulario() ? (console.log("Formulario válido. Enviando datos..."), 
    //alert('¡Datos enviados correctamente!'), this.reset()) : null;
  });

  function validarFormulario() {
    const porFavorIngrese = "Por favor, ingrese ";
    let esValido = true;

    // Valida el campo Email
    if (email.value.trim() === "") {
      esValido = false;
      alert(`${porFavorIngrese} su dirección de correo electrónico.`);
      email.focus();
    } else if (!validarEmail(email.value)) {
      esValido = false;
      alert("El formato del correo electrónico es inválido.");
      email.focus();
    }

    return esValido;
  }
});
