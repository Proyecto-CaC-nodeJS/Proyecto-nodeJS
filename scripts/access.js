/* Validaciones del formulario acceso */

document.addEventListener("DOMContentLoaded", function () {
  const formulario = document.querySelector(".forms");
  const usuario = document.querySelector("#usuario");
  const password = document.querySelector("#password");

  formulario.addEventListener("submit", function (event) {
    event.preventDefault();

    /*
    // Si el formulario es válido, puedes enviar los datos
    if (validarFormulario()) {
    // Si el formulario es válido, puedes enviar los datos
    // console.log("Formulario válido. Enviando datos...");

    // Si el formulario es válido, lo informa en pantalla
    alert('¡ Datos enviados correctamente !');

    // Hace un reset de los campos
    this.reset();
    }
    */

    // Si el formulario es válido, puedes enviar los datos
    // console.log("Formulario válido. Enviando datos...");

    // Si el formulario es válido, lo informa en pantalla
    validarFormulario() ? (alert('¡Datos enviados correctamente!'), this.reset()) : null;
    //validarFormulario() ? (console.log("Formulario válido. Enviando datos..."), 
    //alert('¡Datos enviados correctamente!'), this.reset()) : null;
  });

  function validarFormulario() {
    const porFavorIngrese = "Por favor, ingrese "; 
    let esValido = true;

    // Valida el campo usuario
    /*
    if (usuario.value.trim() === "") {
      esValido = false;
      alert(`${porFavorIngrese} su usuario.`);
      usuario.focus();
    }
    */
    (usuario.value.trim() === "") ? (esValido = false, alert(`${porFavorIngrese} su usuario.`), 
    usuario.focus()) : null;

    // Valida el campo contraseña
    /*
    if ((esValido) && (password.value.trim() === "")) {
      esValido = false;
      alert(`${porFavorIngrese} contraseña.`);
      password.focus();
    }
    */
    (esValido && password.value.trim() === "") ? (esValido = false, alert(`${porFavorIngrese} contraseña.`), 
    password.focus()) : null;


    return esValido;
  }
});
