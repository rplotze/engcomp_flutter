class Pais {
  int id;
  String abreviatura;
  String nome;
  String area;
  String capital;
  String historico;

  Pais(
    this.id,
    this.abreviatura,
    this.nome,
    this.area,
    this.capital,
    this.historico,
  );

  //
  // Converter um objeto JSON em um objeto
  // da classe Pais
  //
  factory Pais.fromJson(Map<String, dynamic> j) {
    return Pais(
      j['id']['M49'],
      j['id']['ISO-3166-1-ALPHA-2'],
      j['nome']['abreviado'],
      j['area']['total'],
      j['governo']['capital']['nome'],
      j['historico']
    );
  }
}
