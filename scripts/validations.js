/* Validaciones para todos los formularios */

// Función para validar el formato del correo electrónico
function validarEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    return emailRegex.test(email);
}

/*
// Función para validar el formato del teléfono
function validarTelefono(telefono) {
    // Asumiendo que el teléfono debe tener 10 dígitos
    const telefonoRegex = /^\d{10}$/;
    
    return telefonoRegex.test(telefono);
}
*/

// Función para validar el formato del teléfono
const validarTelefono = (telefono) => {
    // Asumiendo que el teléfono debe tener 10 dígitos
    const telefonoRegex = /^\d{10}$/;

    return telefonoRegex.test(telefono);
};

// Se podrian poner los que se repiten en varios formularios por ejemplo una funcion que valide si el usuario
// esta vacio o si la cotraseña es vacia y demas