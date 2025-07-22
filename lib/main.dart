import 'package:flutter/material.dart';
import 'data/database.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manual de Antibióticos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.grey[100],
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 700;
    final logoSize = isDesktop
        ? MediaQuery.of(context).size.width * 0.15
        : MediaQuery.of(context).size.width * 0.35;
    final paddingHorizontal = isDesktop ? 200.0 : 24.0;
    final buttonPaddingHorizontal = isDesktop ? 250.0 : 32.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 2,
        title: const Text(
          'Manual de Antibióticos',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: isDesktop ? 48 : MediaQuery.of(context).size.height * 0.10),
              Container(
                width: logoSize,
                height: logoSize,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(logoSize / 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withOpacity(0.1),
                      blurRadius: 16,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.medical_services,
                    color: Colors.deepPurple,
                    size: logoSize * 0.7,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                child: Text(
                  'Bem-vindo ao Manual de Antibióticos!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isDesktop ? 22 : 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: buttonPaddingHorizontal),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      minimumSize: Size.fromHeight(isDesktop ? 56 : 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    icon: const Icon(Icons.search),
                    label: Text(
                      'Pesquisar',
                      style: TextStyle(
                        fontSize: isDesktop ? 20 : 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AntibioticsSearchPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: buttonPaddingHorizontal),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.deepPurple,
                      minimumSize: Size.fromHeight(isDesktop ? 56 : 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    icon: const Icon(Icons.bookmark),
                    label: Text(
                      'Favoritos',
                      style: TextStyle(
                        fontSize: isDesktop ? 20 : 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SalvosPage(
                            salvos: globalSalvos,
                            onRemove: (item, tipo) {
                              globalSalvos.removeWhere((e) => e['id'] == item['id'] && e['tipo'] == tipo);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: isDesktop ? 48 : MediaQuery.of(context).size.height * 0.10),
            ],
          ),
        ),
      ),
    );
  }
}

class AntibioticsSearchPage extends StatefulWidget {
  const AntibioticsSearchPage({super.key});

  @override
  State<AntibioticsSearchPage> createState() => _AntibioticsSearchPageState();
}

class _AntibioticsSearchPageState extends State<AntibioticsSearchPage> {
  String query = '';
  List<Map<String, dynamic>> resultadosAntibiotico = [];
  List<Map<String, dynamic>> resultadosPatologia = [];
  List<Map<String, dynamic>> salvos = [];
  bool mostrarTudoPatologia = false;
  bool mostrarTudoAntibiotico = false;

  static const int maxItensMenu = 1;

  @override
  void initState() {
    super.initState();
    buscar('');
  }

  void buscar(String termo) {
    final termoLower = termo.toLowerCase();
    setState(() {
      resultadosAntibiotico = dadosPorAntibiotico.where((item) {
        return item['nomeAntibiotico'].toString().toLowerCase().contains(termoLower);
      }).toList();

      resultadosPatologia = dadosPorPatologia.where((item) {
        return item['doencaPatologia'].toString().toLowerCase().contains(termoLower) ||
            item['microrganismo'].toString().toLowerCase().contains(termoLower) ||
            item['primeiraEscolha']['nome'].toString().toLowerCase().contains(termoLower) ||
            item['segundaEscolha']['nome'].toString().toLowerCase().contains(termoLower);
      }).toList();
    });
  }

  void adicionarAosSalvos(Map<String, dynamic> item, String tipo) {
    final id = tipo == 'patologia' ? item['doencaPatologia'] : item['nomeAntibiotico'];
    if (!globalSalvos.any((e) => e['id'] == id && e['tipo'] == tipo)) {
      setState(() {
        globalSalvos.add({...item, 'tipo': tipo, 'id': id});
      });
    }
  }

  void removerDosSalvos(Map<String, dynamic> item, String tipo) {
    setState(() {
      globalSalvos.removeWhere((e) => e['id'] == (tipo == 'patologia' ? item['doencaPatologia'] : item['nomeAntibiotico']) && e['tipo'] == tipo);
    });
  }

  void abrirSalvos() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SalvosPage(
          salvos: salvos,
          onRemove: removerDosSalvos,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final exibirPatologias = mostrarTudoPatologia || resultadosPatologia.length <= maxItensMenu
        ? resultadosPatologia
        : resultadosPatologia.take(maxItensMenu).toList();
    final exibirAntibioticos = mostrarTudoAntibiotico || resultadosAntibiotico.length <= maxItensMenu
        ? resultadosAntibiotico
        : resultadosAntibiotico.take(maxItensMenu).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manual de Antibióticos',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 2,
        // Removed the actions with the bookmark icon
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  query = value;
                  buscar(query);
                },
                decoration: InputDecoration(
                  labelText: 'Buscar por antibiótico, doença ou microrganismo',
                  labelStyle: const TextStyle(fontSize: 16),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                children: [
                  if (resultadosPatologia.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Resultados por Patologia',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    ...exibirPatologias.map((item) => Card(
                          elevation: 2,
                          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            title: Text(
                              item['doencaPatologia'],
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'Microrganismo: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: item['microrganismo'],
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                globalSalvos.any((e) => e['id'] == item['doencaPatologia'] && e['tipo'] == 'patologia')
                                    ? Icons.bookmark // filled icon for saved
                                    : Icons.bookmark_border, // outline icon for unsaved
                                color: globalSalvos.any((e) => e['id'] == item['doencaPatologia'] && e['tipo'] == 'patologia')
                                    ? Colors.amber
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                if (globalSalvos.any((e) => e['id'] == item['doencaPatologia'] && e['tipo'] == 'patologia')) {
                                  removerDosSalvos(item, 'patologia');
                                } else {
                                  adicionarAosSalvos(item, 'patologia');
                                }
                              },
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PatologiaDetailPage(
                                    data: item,
                                    onSave: () => adicionarAosSalvos(item, 'patologia'),
                                    isSaved: salvos.any((e) => e['id'] == item['doencaPatologia'] && e['tipo'] == 'patologia'),
                                    onNavigateToAntibiotico: (nomeAntibiotico) {
                                      final ab = dadosPorAntibiotico.firstWhere(
                                        (a) => a['nomeAntibiotico'] == nomeAntibiotico,
                                        orElse: () => {},
                                      );
                                      if (ab.isNotEmpty) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => AntibioticDetailPage(
                                              antibioticData: ab,
                                              onSave: () => adicionarAosSalvos(ab, 'antibiotico'),
                                              isSaved: globalSalvos.any((e) => e['id'] == ab['nomeAntibiotico'] && e['tipo'] == 'antibiotico'),
                                              onNavigateToPatologia: (doenca) {},
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        )),
                    if (resultadosPatologia.length > maxItensMenu)
                      Center(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              mostrarTudoPatologia = !mostrarTudoPatologia;
                            });
                          },
                          child: Text(
                            mostrarTudoPatologia ? 'Mostrar menos' : 'Mostrar tudo',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                      ),
                  ],
                  if (resultadosAntibiotico.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Resultados por Antibiótico',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    ...exibirAntibioticos.map((item) => Card(
                          elevation: 2,
                          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            title: Text(
                              item['nomeAntibiotico'],
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                item['classeGrupo'],
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                globalSalvos.any((e) => e['id'] == item['nomeAntibiotico'] && e['tipo'] == 'antibiotico')
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                                color: globalSalvos.any((e) => e['id'] == item['nomeAntibiotico'] && e['tipo'] == 'antibiotico')
                                    ? Colors.amber
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                if (globalSalvos.any((e) => e['id'] == item['nomeAntibiotico'] && e['tipo'] == 'antibiotico')) {
                                  removerDosSalvos(item, 'antibiotico');
                                } else {
                                  adicionarAosSalvos(item, 'antibiotico');
                                }
                              },
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AntibioticDetailPage(
                                    antibioticData: item,
                                    onSave: () => adicionarAosSalvos(item, 'antibiotico'),
                                    isSaved: salvos.any((e) => e['id'] == item['nomeAntibiotico'] && e['tipo'] == 'antibiotico'),
                                    onNavigateToPatologia: (doenca) {
                                      final pat = dadosPorPatologia.firstWhere(
                                        (p) => p['doencaPatologia'] == doenca,
                                        orElse: () => {},
                                      );
                                      if (pat.isNotEmpty) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PatologiaDetailPage(
                                              data: pat,
                                              onSave: () => adicionarAosSalvos(pat, 'patologia'),
                                              isSaved: salvos.any((e) => e['id'] == pat['doencaPatologia'] && e['tipo'] == 'patologia'),
                                              onNavigateToAntibiotico: (nomeAntibiotico) {},
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        )),
                    if (resultadosAntibiotico.length > maxItensMenu)
                      Center(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              mostrarTudoAntibiotico = !mostrarTudoAntibiotico;
                            });
                          },
                          child: Text(
                            mostrarTudoAntibiotico ? 'Mostrar menos' : 'Mostrar tudo',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ),
                      ),
                  ],
                  if (resultadosPatologia.isEmpty && resultadosAntibiotico.isEmpty)
                    const Padding(
                      padding: EdgeInsets.all(32.0),
                      child: Center(
                        child: Text(
                          'Nenhum resultado encontrado.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PatologiaDetailPage extends StatefulWidget {
  final Map<String, dynamic> data;
  final void Function()? onSave;
  final bool isSaved;
  final void Function(String nomeAntibiotico)? onNavigateToAntibiotico;

  const PatologiaDetailPage({
    super.key,
    required this.data,
    this.onSave,
    this.isSaved = false,
    this.onNavigateToAntibiotico,
  });

  @override
  State<PatologiaDetailPage> createState() => _PatologiaDetailPageState();
}

class _PatologiaDetailPageState extends State<PatologiaDetailPage> {
  late bool isItemSaved;

  @override
  void initState() {
    super.initState();
    isItemSaved = globalSalvos.any((e) =>
      e['id'] == widget.data['doencaPatologia'] && e['tipo'] == 'patologia'
    );
  }

  void handleSave() {
    if (isItemSaved) {
      globalSalvos.removeWhere((e) =>
        e['id'] == widget.data['doencaPatologia'] && e['tipo'] == 'patologia');
    } else {
      globalSalvos.add({
        ...widget.data,
        'tipo': 'patologia',
        'id': widget.data['doencaPatologia'],
      });
    }
    setState(() {
      isItemSaved = !isItemSaved;
    });
    if (widget.onSave != null) widget.onSave!();
  }

  Widget _buildAntibioticoLink(BuildContext context, String nome) {
    final existe = dadosPorAntibiotico.any((a) => a['nomeAntibiotico'] == nome);
    if (existe && widget.onNavigateToAntibiotico != null) {
      return InkWell(
        onTap: () => widget.onNavigateToAntibiotico!(nome),
        child: Text(
          nome,
          style: const TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
    return Text(nome);
  }

  @override
  Widget build(BuildContext context) {
    final primeira = widget.data['primeiraEscolha'] as Map<String, dynamic>;
    final segunda = widget.data['segundaEscolha'] as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text(
                widget.data['doencaPatologia'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                isItemSaved ? Icons.bookmark : Icons.bookmark_border,
                color: isItemSaved ? Colors.amber : Colors.grey,
              ),
              onPressed: handleSave,
              tooltip: isItemSaved ? 'Remover dos favoritos' : 'Salvar',
            ),
          ],
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      children: [
                        const TextSpan(text: 'Microrganismo: '),
                        TextSpan(
                          text: widget.data['microrganismo'],
                          style: const TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text('Primeira escolha:', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ...primeira.entries.map((e) {
                    if (e.key == 'nome') {
                      return Row(
                        children: [
                          const Text('nome: '),
                          _buildAntibioticoLink(context, e.value.toString()),
                        ],
                      );
                    }
                    return Text('${e.key}: ${e.value}');
                  }),
                  const SizedBox(height: 12),
                  Text('Segunda escolha:', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ...segunda.entries.map((e) {
                    if (e.key == 'nome') {
                      return Row(
                        children: [
                          const Text('nome: '),
                          _buildAntibioticoLink(context, e.value.toString()),
                        ],
                      );
                    }
                    return Text('${e.key}: ${e.value}');
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AntibioticDetailPage extends StatefulWidget {
  final Map<String, dynamic> antibioticData;
  final VoidCallback? onSave;
  final bool isSaved;
  final void Function(String doencaPatologia)? onNavigateToPatologia;

  const AntibioticDetailPage({
    super.key,
    required this.antibioticData,
    this.onSave,
    this.isSaved = false,
    this.onNavigateToPatologia,
  });

  @override
  State<AntibioticDetailPage> createState() => _AntibioticDetailPageState();
}

class _AntibioticDetailPageState extends State<AntibioticDetailPage> {
  late bool isItemSaved;

  @override
  void initState() {
    super.initState();
    isItemSaved = globalSalvos.any((e) =>
      e['id'] == widget.antibioticData['nomeAntibiotico'] && e['tipo'] == 'antibiotico'
    );
  }

  void handleSave() {
    if (isItemSaved) {
      globalSalvos.removeWhere((e) =>
        e['id'] == widget.antibioticData['nomeAntibiotico'] && e['tipo'] == 'antibiotico');
    } else {
      globalSalvos.add({
        ...widget.antibioticData,
        'tipo': 'antibiotico',
        'id': widget.antibioticData['nomeAntibiotico'],
      });
    }
    setState(() {
      isItemSaved = !isItemSaved;
    });
    if (widget.onSave != null) widget.onSave!();
  }

  Widget _buildPatologiaLinks(BuildContext context, String indicacoes) {
    final doencas = indicacoes.split(',').map((e) => e.trim()).toList();
    return Wrap(
      spacing: 8,
      children: doencas.map((doenca) {
        final existe = dadosPorPatologia.any((p) => p['doencaPatologia'] == doenca);
        if (existe && widget.onNavigateToPatologia != null) {
          return InkWell(
            onTap: () => widget.onNavigateToPatologia!(doenca),
            child: Text(
              doenca,
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          );
        }
        return Text(
          doenca,
          style: const TextStyle(
            fontSize: 15,
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text(
                widget.antibioticData['nomeAntibiotico'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                isItemSaved ? Icons.bookmark : Icons.bookmark_border,
                color: isItemSaved ? Colors.amber : Colors.grey,
              ),
              onPressed: handleSave,
              tooltip: isItemSaved ? 'Remover dos favoritos' : 'Salvar',
            ),
          ],
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: widget.antibioticData.entries.map((entry) {
                  if (entry.key == 'indicacoesDoencas') {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Indicações/Doenças:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 6),
                        _buildPatologiaLinks(context, entry.value.toString()),
                        const SizedBox(height: 12),
                      ],
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '${entry.key}: ${entry.value}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SalvosPage extends StatefulWidget {
  final List<Map<String, dynamic>> salvos;
  final void Function(Map<String, dynamic> item, String tipo) onRemove;

  const SalvosPage({super.key, required this.salvos, required this.onRemove});

  @override
  State<SalvosPage> createState() => _SalvosPageState();
}

class _SalvosPageState extends State<SalvosPage> {
  late List<Map<String, dynamic>> localSalvos;

  @override
  void initState() {
    super.initState();
    localSalvos = List<Map<String, dynamic>>.from(widget.salvos);
  }

  void removeAndRefresh(Map<String, dynamic> item, String tipo) {
    widget.onRemove(item, tipo);
    setState(() {
      localSalvos.removeWhere((e) => e['id'] == item['id'] && e['tipo'] == tipo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favoritos')),
      body: localSalvos.isEmpty
          ? const Center(child: Text('Nenhum item salvo.'))
          : ListView.builder(
              itemCount: localSalvos.length,
              itemBuilder: (context, index) {
                final item = localSalvos[index];
                final tipo = item['tipo'];
                return ListTile(
                  title: Text(tipo == 'patologia' ? item['doencaPatologia'] : item['nomeAntibiotico']),
                  subtitle: Text(tipo == 'patologia' ? 'Patologia' : 'Antibiótico'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => removeAndRefresh(item, tipo),
                  ),
                  onTap: () {
                    if (tipo == 'patologia') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PatologiaDetailPage(
                            data: item,
                            isSaved: true,
                            onSave: () => removeAndRefresh(item, tipo),
                            onNavigateToAntibiotico: (nomeAntibiotico) {},
                          ),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AntibioticDetailPage(
                            antibioticData: item,
                            isSaved: true,
                            onSave: () => removeAndRefresh(item, tipo),
                            onNavigateToPatologia: (doenca) {},
                          ),
                        ),
                      );
                    }
                  },
                );
              },
            ),
    );
  }
}

List<Map<String, dynamic>> globalSalvos = [];

