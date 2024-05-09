/* Validaciones para todos los formularios */

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
