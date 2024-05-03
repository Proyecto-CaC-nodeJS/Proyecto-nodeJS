var inputs = document.getElementsByTagName("input");
for (var i = 0; i < inputs.length; i++) {
  inputs[i].addEventListener("keyup", function () {
    if (this.value.length >= 1) {
      this.nextElementSibling.classList.add("set");
    } else {
      this.nextElementSibling.classList.remove("set");
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

document.addEventListener("DOMContentLoaded", function () {
  const formulario = document.querySelector(".forms");
  const email = document.querySelector("#email");

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

    // Valida el campo Email
    if (email.value.trim() === "") {
      esValido = false;
      alert(porFavorIngrese + "su dirección de correo electrónico.");
      email.focus();
    } else if (!validarEmail(email.value)) {
      esValido = false;
      alert("El formato del correo electrónico no es válido.");
      email.focus();
    }

    return esValido;
  }

  // Función para validar el formato del correo electrónico
  function validarEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
  }

  // Función para validar el formato del teléfono (opcional)
  function validarTelefono(telefono) {
    const telefonoRegex = /^\d{10}$/; // Asumiendo que el teléfono debe tener 10 dígitos
    return telefonoRegex.test(telefono);
  }
});
