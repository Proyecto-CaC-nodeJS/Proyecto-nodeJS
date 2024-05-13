/* Validaciones del formulario acceso */

document.addEventListener("DOMContentLoaded", function () {
  const formulario = document.querySelector(".forms");
  const usuario = document.querySelector("#usuario");
  const password = document.querySelector("#password");

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
    (usuario.value.trim() === "") ? (esValido = false, alert(`${porFavorIngrese} su usuario.`), 
    usuario.focus()) : null;

    // Valida el campo contraseña
    (esValido && password.value.trim() === "") ? (esValido = false, 
    alert(`${porFavorIngrese} contraseña.`), password.focus()) : null;

    return esValido;
  }
});
