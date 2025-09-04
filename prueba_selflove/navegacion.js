// navegacion.js
let actual = 1;
const total = 15;

function mostrarPregunta(n) {
    for (let i = 1; i <= total; i++) {
        const div = document.getElementById("pregunta" + i);
        if (div) div.style.display = i === n ? "block" : "none";
    }
}

function siguiente() {
    if (actual < total) {
        actual++;
        mostrarPregunta(actual);
    }
}

function anterior() {
    if (actual > 1) {
        actual--;
        mostrarPregunta(actual);
    }
}

window.onload = function () {
    mostrarPregunta(actual);
};