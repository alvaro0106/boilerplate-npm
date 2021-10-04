function exitoCallback(resultado) {
    console.log("Archivo de audio disponible en la URL " + resultado);
  }
  
  function falloCallback(error) {
    console.log("Error generando archivo de audio " + error);
  }
  
  crearArchivoAudioAsync(audioConfig, exitoCallback, falloCallback);
  