import 'package:flutter/material.dart';
import 'data/database.dart';
import 'theme/app_theme.dart';
import 'theme/responsive_body.dart';

/// Converte chaves camelCase (ex.: "doseAdulto") em rótulos legíveis ("Dose Adulto").
String formatFieldLabel(String key) {
  final withSpaces = key.replaceAllMapped(
    RegExp(r'([a-z0-9])([A-Z])'),
    (m) => '${m.group(1)} ${m.group(2)}',
  );
  return withSpaces[0].toUpperCase() + withSpaces.substring(1);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manual de Antibióticos',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void _showInfoModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.info_outline, color: AppColors.primary, size: 22),
                  const SizedBox(width: 8),
                  Text('Uso consciente', style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'O uso consciente de antibióticos é um compromisso com a saúde de todos e com a proteção do nosso planeta.\n\n'
                'Esta ferramenta foi desenvolvida para ser sua aliada na tomada de decisões clínicas rápidas e seguras, promovendo o uso racional de antimicrobianos. A prescrição correta é fundamental para a saúde pública, pois ajuda a minimizar o risco do desenvolvimento de resistência bacteriana, um dos maiores desafios da medicina moderna.\n\n'
                'Além disso, o uso responsável de medicamentos impacta diretamente o meio ambiente. A redução de cepas multirresistentes contribui para um ecossistema mais seguro e equilibrado. Ao optar por uma ferramenta digital, você também colabora com a sustentabilidade, substituindo manuais impressos e reduzindo o consumo de recursos.\n\n'
                'Use esta plataforma como um apoio para uma prática clínica baseada em evidências, mais eficiente e sustentável.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 700;
    final logoSize = isDesktop
        ? MediaQuery.of(context).size.width * 0.15
        : MediaQuery.of(context).size.width * 0.32;
    final paddingHorizontal = isDesktop ? 200.0 : 24.0;
    final buttonPaddingHorizontal = isDesktop ? 250.0 : 24.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manual de Antibióticos'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: isDesktop ? 48 : MediaQuery.of(context).size.height * 0.08),
              Container(
                width: logoSize,
                height: logoSize,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.chipBackground, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.08),
                      blurRadius: 20,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.medical_services_outlined,
                    color: AppColors.primary,
                    size: logoSize * 0.5,
                  ),
                ),
              ),
              const SizedBox(height: 28),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                child: Text(
                  'Bem-vindo ao Manual de Antibióticos',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: isDesktop ? 24 : 20,
                      ),
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                child: Text(
                  'Consulta rápida e segura para sua prática clínica',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const SizedBox(height: 36),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: buttonPaddingHorizontal),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(isDesktop ? 56 : 52),
                    ),
                    icon: const Icon(Icons.search),
                    label: const Text('Pesquisar'),
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
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: buttonPaddingHorizontal),
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(isDesktop ? 56 : 52),
                    ),
                    icon: const Icon(Icons.bookmark_outline),
                    label: const Text('Favoritos'),
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
              SizedBox(height: isDesktop ? 48 : MediaQuery.of(context).size.height * 0.08),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showInfoModal(context),
        tooltip: 'Informações sobre uso consciente',
        child: const Icon(Icons.info_outline),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
        title: const Text('Pesquisar'),
      ),
      body: ResponsiveBody(
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
                  labelStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.chipBackground, width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.chipBackground, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
                  ),
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
                      padding: const EdgeInsets.fromLTRB(6, 8, 6, 8),
                      child: Row(
                        children: [
                          const Icon(Icons.coronavirus_outlined, size: 16, color: AppColors.primary),
                          const SizedBox(width: 6),
                          Text(
                            'RESULTADOS POR PATOLOGIA',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                    ...exibirPatologias.map((item) => Card(
                          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
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
                                    ? AppColors.primary
                                    : AppColors.textSecondary,
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
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                  ],
                  if (resultadosAntibiotico.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(6, 8, 6, 8),
                      child: Row(
                        children: [
                          const Icon(Icons.medication_outlined, size: 16, color: AppColors.primary),
                          const SizedBox(width: 6),
                          Text(
                            'RESULTADOS POR ANTIBIÓTICO',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ),
                    ...exibirAntibioticos.map((item) => Card(
                          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
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
                                    ? AppColors.primary
                                    : AppColors.textSecondary,
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
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                  ],
                  if (resultadosPatologia.isEmpty && resultadosAntibiotico.isEmpty)
                    Padding(
                      padding: const EdgeInsets.all(48.0),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(Icons.search_off, size: 40, color: AppColors.textSecondary.withValues(alpha: 0.6)),
                            const SizedBox(height: 12),
                            Text(
                              'Nenhum resultado encontrado',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                            ),
                          ],
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
            color: AppColors.primary,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
    return Text(nome, style: const TextStyle(fontWeight: FontWeight.w600));
  }

  Widget _buildKeyValueRow(BuildContext context, String label, Widget value) {
    final displayLabel = formatFieldLabel(label);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90,
            child: Text(
              displayLabel,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(child: value),
        ],
      ),
    );
  }

  Widget _buildEscolhaSection(BuildContext context, String titulo, Map<String, dynamic> escolha) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.chipBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                titulo,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  letterSpacing: 0.6,
                ),
              ),
            ),
            const SizedBox(height: 14),
            ...escolha.entries.map((e) {
              if (e.key == 'nome') {
                return _buildKeyValueRow(context, e.key, _buildAntibioticoLink(context, e.value.toString()));
              }
              return _buildKeyValueRow(
                context,
                e.key,
                Text(e.value.toString(), style: Theme.of(context).textTheme.bodyMedium),
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final primeira = widget.data['primeiraEscolha'] as Map<String, dynamic>;
    final segunda = widget.data['segundaEscolha'] as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['doencaPatologia']),
        actions: [
          IconButton(
            icon: Icon(isItemSaved ? Icons.bookmark : Icons.bookmark_border),
            onPressed: handleSave,
            tooltip: isItemSaved ? 'Remover dos favoritos' : 'Salvar',
          ),
        ],
      ),
      body: ResponsiveBody(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Row(
              children: [
                const Icon(Icons.coronavirus_outlined, size: 18, color: AppColors.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        const TextSpan(text: 'Microrganismo: ', style: TextStyle(fontWeight: FontWeight.w600)),
                        TextSpan(
                          text: widget.data['microrganismo'],
                          style: const TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildEscolhaSection(context, '1ª ESCOLHA', primeira),
            const SizedBox(height: 12),
            _buildEscolhaSection(context, '2ª ESCOLHA', segunda),
          ],
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
      runSpacing: 4,
      children: doencas.map((doenca) {
        final existe = dadosPorPatologia.any((p) => p['doencaPatologia'] == doenca);
        if (existe && widget.onNavigateToPatologia != null) {
          return InkWell(
            onTap: () => widget.onNavigateToPatologia!(doenca),
            child: Text(
              doenca,
              style: const TextStyle(
                color: AppColors.primary,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          );
        }
        return Text(doenca, style: Theme.of(context).textTheme.bodyMedium);
      }).toList(),
    );
  }

  Widget _buildRow(BuildContext context, String label, Widget value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              formatFieldLabel(label),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(child: value),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.antibioticData['nomeAntibiotico']),
        actions: [
          IconButton(
            icon: Icon(isItemSaved ? Icons.bookmark : Icons.bookmark_border),
            onPressed: handleSave,
            tooltip: isItemSaved ? 'Remover dos favoritos' : 'Salvar',
          ),
        ],
      ),
      body: ResponsiveBody(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.antibioticData.entries.where((e) => e.key != 'nomeAntibiotico').map((entry) {
                    if (entry.key == 'indicacoesDoencas') {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'INDICAÇÕES / DOENÇAS',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            const SizedBox(height: 6),
                            _buildPatologiaLinks(context, entry.value.toString()),
                            const SizedBox(height: 12),
                          ],
                        ),
                      );
                    }
                    return _buildRow(
                      context,
                      entry.key,
                      Text(entry.value.toString(), style: Theme.of(context).textTheme.bodyMedium),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
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
      body: ResponsiveBody(
        child: localSalvos.isEmpty
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.bookmark_border, size: 40, color: AppColors.textSecondary.withValues(alpha: 0.6)),
                  const SizedBox(height: 12),
                  Text(
                    'Nenhum item salvo ainda',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.textSecondary),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              itemCount: localSalvos.length,
              itemBuilder: (context, index) {
                final item = localSalvos[index];
                final tipo = item['tipo'];
                final isPatologia = tipo == 'patologia';
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                    leading: Icon(
                      isPatologia ? Icons.coronavirus_outlined : Icons.medication_outlined,
                      color: AppColors.primary,
                    ),
                    title: Text(
                      isPatologia ? item['doencaPatologia'] : item['nomeAntibiotico'],
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 15),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColors.chipBackground,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          isPatologia ? 'PATOLOGIA' : 'ANTIBIÓTICO',
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline, color: AppColors.alert),
                      tooltip: 'Remover dos favoritos',
                      onPressed: () => removeAndRefresh(item, tipo),
                    ),
                    onTap: () {
                      if (isPatologia) {
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
                  ),
                );
              },
            ),
      ),
    );
  }
}

List<Map<String, dynamic>> globalSalvos = [];