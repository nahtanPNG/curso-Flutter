
List<E>? filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for(E elemento in lista) {
    if(fn(elemento)){
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

main() {
  var notas = [8.2 , 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  var notasBoasfn = (double nota) => nota>= 7.5;

  var notasBoas = filtrar<double>(notas, notasBoasfn);
  print(notasBoas);

  var nomes = ['Ana', 'Bia', 'Rebeca', 'Winnie', 'João'];
  var nomesGrandesFn = (String nome) => nome.length>=5;

  print(filtrar(nomes, nomesGrandesFn));
}