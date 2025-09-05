
function guardarCambios(tipo, valor) {
  localStorage.setItem(tipo, valor);
}

//coomprobación de datos guardadoss
function cargarDatosGuardados() {

  if (document.querySelector('.lbusername')) {
    const nombreGuardado = localStorage.getItem('nombreUsuario');

    if (nombreGuardado) {
      document.querySelector('.lbusername').textContent = nombreGuardado;
    }

    const correoGuardado = localStorage.getItem('correoUsuario');

    if (correoGuardado) {
      document.querySelector('.lbmailuser').textContent = correoGuardado;
    }

    const bioGuardada = localStorage.getItem('bioUsuario');

    if (bioGuardada) {
      document.querySelector('.lbbio').textContent = bioGuardada;
    }
  }
}
// Oscar estuvo aqui
// configurar eventos cuando el DOM esté completamente cargado y cargar página
document.addEventListener('DOMContentLoaded', function () {
  cargarDatosGuardados();

  // boton para nombre de usuario
  const btnAcceptName = document.getElementById('btnAcceptName');
  if (btnAcceptName) {
    btnAcceptName.addEventListener('click', function () {
      const nuevoNombre = document.querySelector('.inputnewuser').value;
      if (nuevoNombre.trim() !== '') {
        guardarCambios('nombreUsuario', nuevoNombre);
        alert('Nombre actualizado correctamente');
      } else {
        alert('Por favor ingresa un nombre válido');
      }
    });
  }

  // boton para mail
  const btnAcceptMail = document.querySelector('.dropdown2 button');
  if (btnAcceptMail) {
    btnAcceptMail.addEventListener('click', function () {
      const nuevoCorreo = document.querySelector('.inputnewmail').value;
      if (nuevoCorreo.trim() !== '') {
        guardarCambios('correoUsuario', nuevoCorreo);
        alert('Correo actualizado correctamente');
      } else {
        alert('Por favor ingresa un correo válido');
      }
    });
  }

  //boton para biografia
  const btnAcceptBio = document.querySelector('.dropdown3 button');
  if (btnAcceptBio) {
    btnAcceptBio.addEventListener('click', function () {
      const nuevaBio = document.querySelector('.bio').value;
      if (nuevaBio.trim() !== '') {
        guardarCambios('bioUsuario', nuevaBio);
        alert('Biografía actualizada correctamente');
      } else {
        alert('Por favor ingresa una biografía válida');
      }
    });
  }

  // boton home
  const homeButtons = document.querySelectorAll('.home-btn');
  homeButtons.forEach(button => {
    button.addEventListener('click', function () {
      window.location.href = 'index.html';
    });
  });
});