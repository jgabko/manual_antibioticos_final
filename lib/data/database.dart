// Tabela 1: Foco em busca por Doença/Patologia e Microrganismo
final List<Map<String, dynamic>> dadosPorPatologia = [
  {
    "doencaPatologia": "Faringite",
    "microrganismo": "Streptococcus pyogenes",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Gram-positivo",
    "primeiraEscolha": {
      "nome": "Penicilina G cristalina",
      "classe": "Penicilinas",
      "doseAdulto": "2 a 4 MU a cada 4-6h EV",
      "doseMaximaAdulto": "24 MU/dia",
      "dosePediatrico": "50.000 a 100.000 U/kg/dia EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Não cobre Staphylococcus, cuidado com resistência pneumocócica"
    },
    "segundaEscolha": {
      "nome": "Cefalexina",
      "classe": "Cefalosporina 1ª",
      "doseAdulto": "500mg de 6/6h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia 6/6h VO",
      "espectroAcao": "Gram-positivo",
      "viaAdmin": "VO",
      "observacoes": "Não usar para meningite, atividade limitada contra gram-negativos"
    }
  },
  {
    "doencaPatologia": "Impetigo",
    "microrganismo": "Staphylococcus aureus, Streptococcus pyogenes",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Gram-positivo",
    "primeiraEscolha": {
      "nome": "Penicilina G cristalina",
      "classe": "Penicilinas",
      "doseAdulto": "2 a 4 MU a cada 4-6h EV",
      "doseMaximaAdulto": "24 MU/dia",
      "dosePediatrico": "50.000 a 100.000 U/kg/dia EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Não cobre Staphylococcus, cuidado com resistência pneumocócica"
    },
    "segundaEscolha": {
      "nome": "Cefalexina",
      "classe": "Cefalosporina 1ª",
      "doseAdulto": "500mg de 6/6h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia 6/6h VO",
      "espectroAcao": "Gram-positivo",
      "viaAdmin": "VO",
      "observacoes": "Não usar para meningite, atividade limitada contra gram-negativos"
    }
  },
  {
    "doencaPatologia": "Erisipela",
    "microrganismo": "Streptococcus pyogenes",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Gram-positivo",
    "primeiraEscolha": {
      "nome": "Penicilina G cristalina",
      "classe": "Penicilinas",
      "doseAdulto": "2 a 4 MU a cada 4-6h EV",
      "doseMaximaAdulto": "24 MU/dia",
      "dosePediatrico": "50.000 a 100.000 U/kg/dia EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Não cobre Staphylococcus, cuidado com resistência pneumocócica"
    },
    "segundaEscolha": {
      "nome": "Cefalexina",
      "classe": "Cefalosporina 1ª",
      "doseAdulto": "500mg de 6/6h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia 6/6h VO",
      "espectroAcao": "Gram-positivo",
      "viaAdmin": "VO",
      "observacoes": "Não usar para meningite, atividade limitada contra gram-negativos"
    }
  },
  {
    "doencaPatologia": "Meningite",
    "microrganismo": "Streptococcus pneumoniae, Neisseria meningitidis, Listeria monocytogenes",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção grave do SNC",
    "primeiraEscolha": {
      "nome": "Penicilina G cristalina",
      "classe": "Penicilinas",
      "doseAdulto": "2 a 4 MU a cada 4-6h EV",
      "doseMaximaAdulto": "24 MU/dia",
      "dosePediatrico": "50.000 a 100.000 U/kg/dia EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Não cobre Staphylococcus, cuidado com resistência pneumocócica"
    },
    "segundaEscolha": {
      "nome": "Ceftriaxona",
      "classe": "Cefalosporina 3ª",
      "doseAdulto": "1-2g 12/12h ou 24/24h EV, IM",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia EV",
      "espectroAcao": "Amplo espectro",
      "viaAdmin": "EV, IM",
      "observacoes": "Não cobre Pseudomonas e Enterococos, ação reduzida contra estafilococos"
    }
  },
  {
    "doencaPatologia": "Infecções odontogênicas",
    "microrganismo": "Cocos Gram-positivos e anaeróbios da cavidade oral",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Gram-positivo e anaeróbios",
    "primeiraEscolha": {
      "nome": "Penicilina G cristalina",
      "classe": "Penicilinas",
      "doseAdulto": "2 a 4 MU a cada 4-6h EV",
      "doseMaximaAdulto": "24 MU/dia",
      "dosePediatrico": "50.000 a 100.000 U/kg/dia EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Não cobre Staphylococcus, cuidado com resistência pneumocócica"
    },
    "segundaEscolha": {
      "nome": "Amoxicilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg 8/8h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "30-50mg/kg/dia - 8/8h VO",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "VO",
      "observacoes": "Resistência comum em E. coli, evitar como escolha empírica para ITU"
    }
  },
  {
    "doencaPatologia": "Bronquite",
    "microrganismo": "Streptococcus pneumoniae, Haemophilus influenzae, Moraxella catarrhalis",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção respiratória",
    "primeiraEscolha": {
      "nome": "Amoxicilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg 8/8h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "30-50mg/kg/dia - 8/8h VO",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "VO",
      "observacoes": "Resistência comum em E. coli, evitar como escolha empírica para ITU"
    },
    "segundaEscolha": {
      "nome": "Cefuroxima",
      "classe": "Cefalosporina 2ª",
      "doseAdulto": "500mg a cada 12h VO, EV",
      "doseMaximaAdulto": "4.5g/dia (EV)",
      "dosePediatrico": "20-40mg/kg/dia (8/8h)",
      "espectroAcao": "Gram-positivos e alguns Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Alternativa a SMZ/TMP para infecções respiratórias"
    }
  },
  {
    "doencaPatologia": "Sinusite",
    "microrganismo": "Streptococcus pneumoniae, Haemophilus influenzae",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção respiratória",
    "primeiraEscolha": {
      "nome": "Amoxicilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg 8/8h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "30-50mg/kg/dia - 8/8h VO",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "VO",
      "observacoes": "Resistência comum em E. coli, evitar como escolha empírica para ITU"
    },
    "segundaEscolha": {
      "nome": "Cefuroxima",
      "classe": "Cefalosporina 2ª",
      "doseAdulto": "500mg a cada 12h VO, EV",
      "doseMaximaAdulto": "4.5g/dia (EV)",
      "dosePediatrico": "20-40mg/kg/dia (8/8h)",
      "espectroAcao": "Gram-positivos e alguns Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Alternativa a SMZ/TMP para infecções respiratórias"
    }
  },
  {
    "doencaPatologia": "Otite",
    "microrganismo": "Streptococcus pneumoniae, Haemophilus influenzae",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção respiratória",
    "primeiraEscolha": {
      "nome": "Amoxicilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg 8/8h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "30-50mg/kg/dia - 8/8h VO",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "VO",
      "observacoes": "Resistência comum em E. coli, evitar como escolha empírica para ITU"
    },
    "segundaEscolha": {
      "nome": "Cefuroxima",
      "classe": "Cefalosporina 2ª",
      "doseAdulto": "500mg a cada 12h VO, EV",
      "doseMaximaAdulto": "4.5g/dia (EV)",
      "dosePediatrico": "20-40mg/kg/dia (8/8h)",
      "espectroAcao": "Gram-positivos e alguns Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Alternativa a SMZ/TMP para infecções respiratórias"
    }
  },
  {
    "doencaPatologia": "Infecção urinária enterocócica leve",
    "microrganismo": "Enterococcus faecalis",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Gram-positivo",
    "primeiraEscolha": {
      "nome": "Amoxicilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg 8/8h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "30-50mg/kg/dia - 8/8h VO",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "VO",
      "observacoes": "Resistência comum em E. coli, evitar como escolha empírica para ITU"
    },
    "segundaEscolha": {
      "nome": "Ampicilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg-1g a cada 6h VO, EV",
      "doseMaximaAdulto": "14g/dia",
      "dosePediatrico": "200mg/kg/dia (6/6h)",
      "espectroAcao": "Gram-positivos e alguns Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Cobertura limitada para Gram-negativos, associar para tratamento empírico"
    }
  },
  {
    "doencaPatologia": "Infecções de pele e tecidos moles",
    "microrganismo": "Staphylococcus aureus, Streptococcus pyogenes",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Gram-positivo",
    "primeiraEscolha": {
      "nome": "Cefalexina",
      "classe": "Cefalosporina 1ª",
      "doseAdulto": "500mg de 6/6h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia 6/6h VO",
      "espectroAcao": "Gram-positivo",
      "viaAdmin": "VO",
      "observacoes": "Não usar para meningite, atividade limitada contra gram-negativos"
    },
    "segundaEscolha": {
      "nome": "Cefazolina",
      "classe": "Cefalosporina 1ª",
      "doseAdulto": "1g a cada 8h EV",
      "doseMaximaAdulto": "6g/dia (até 12g/dia em infecções graves)",
      "dosePediatrico": "100-150mg/kg/dia (6/6h)",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Maior meia-vida entre as cefalosporinas de 1ª geração"
    }
  },
  {
    "doencaPatologia": "ITU leve",
    "microrganismo": "Escherichia coli",
    "ajusteRenalHepatico": "Sim, para Sulfametoxazol-Trimetoprim",
    "perfilSensibilidadeTipoInfeccao": "Amplo espectro, alta resistência",
    "primeiraEscolha": {
      "nome": "Cefalexina",
      "classe": "Cefalosporina 1ª",
      "doseAdulto": "500mg de 6/6h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia 6/6h VO",
      "espectroAcao": "Gram-positivo",
      "viaAdmin": "VO",
      "observacoes": "Não usar para meningite, atividade limitada contra gram-negativos"
    },
    "segundaEscolha": {
      "nome": "Sulfametoxazol-Trimetoprim",
      "classe": "Sulfonamidas",
      "doseAdulto": "800/160mg a cada 12h VO, EV",
      "doseMaximaAdulto": "Dose ajustada para função renal",
      "dosePediatrico": "40/8mg/kg/dia (12/12h)",
      "espectroAcao": "Amplo espectro",
      "viaAdmin": "VO, EV",
      "observacoes": "Barato, mas com altas taxas de resistência bacteriana"
    }
  },
  {
    "doencaPatologia": "Sepse urinária",
    "microrganismo": "Bacilos Gram-negativos",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção grave, amplo espectro",
    "primeiraEscolha": {
      "nome": "Ceftriaxona",
      "classe": "Cefalosporina 3ª",
      "doseAdulto": "1-2g 12/12h ou 24/24h EV, IM",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia EV",
      "espectroAcao": "Amplo espectro",
      "viaAdmin": "EV, IM",
      "observacoes": "Não cobre Pseudomonas e Enterococos, ação reduzida contra estafilococos"
    },
    "segundaEscolha": {
      "nome": "Ciprofloxacina",
      "classe": "Quinolonas",
      "doseAdulto": "500mg a cada 12h VO, EV",
      "doseMaximaAdulto": "1.5g/dia (VO)",
      "dosePediatrico": "20-30mg/kg/dia (12/12h)",
      "espectroAcao": "Excelente ação contra Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Evitar em crianças/gestantes; resistência crescente; fraca ação contra pneumococo"
    }
  },
  {
    "doencaPatologia": "Pneumonia grave",
    "microrganismo": "Streptococcus pneumoniae, Legionella, bacilos Gram-negativos",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção hospitalar, amplo espectro",
    "primeiraEscolha": {
      "nome": "Ceftriaxona",
      "classe": "Cefalosporina 3ª",
      "doseAdulto": "1-2g 12/12h ou 24/24h EV, IM",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia EV",
      "espectroAcao": "Amplo espectro",
      "viaAdmin": "EV, IM",
      "observacoes": "Não cobre Pseudomonas e Enterococos, ação reduzida contra estafilococos"
    },
    "segundaEscolha": {
      "nome": "Piperacilina-tazobactam",
      "classe": "Penicilinas + Inibidores de beta-lactamase",
      "doseAdulto": "3.375g a 4.5g a cada 6h EV",
      "doseMaximaAdulto": "18g/dia (componente piperacilina)",
      "dosePediatrico": "300mg/kg/dia (6/6h)",
      "espectroAcao": "Muito amplo espectro",
      "viaAdmin": "EV",
      "observacoes": "Cobre Pseudomonas aeruginosa. Droga de amplo espectro"
    }
  },
  {
    "doencaPatologia": "Gonorreia",
    "microrganismo": "Neisseria gonorrhoeae",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Doença sexualmente transmissível",
    "primeiraEscolha": {
      "nome": "Ceftriaxona",
      "classe": "Cefalosporina 3ª",
      "doseAdulto": "1-2g 12/12h ou 24/24h EV, IM",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia EV",
      "espectroAcao": "Amplo espectro",
      "viaAdmin": "EV, IM",
      "observacoes": "Não cobre Pseudomonas e Enterococos, ação reduzida contra estafilococos"
    },
    "segundaEscolha": {
      "nome": "-",
      "classe": "-",
      "doseAdulto": "-",
      "doseMaximaAdulto": "-",
      "dosePediatrico": "-",
      "espectroAcao": "-",
      "viaAdmin": "-",
      "observacoes": "-"
    }
  },
  {
    "doencaPatologia": "DIP (Doença Inflamatória Pélvica)",
    "microrganismo": "Neisseria gonorrhoeae, Chlamydia trachomatis, anaeróbios",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção pélvica, polimicrobiana",
    "primeiraEscolha": {
      "nome": "Ceftriaxona",
      "classe": "Cefalosporina 3ª",
      "doseAdulto": "1-2g 12/12h ou 24/24h EV, IM",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia EV",
      "espectroAcao": "Amplo espectro",
      "viaAdmin": "EV, IM",
      "observacoes": "Não cobre Pseudomonas e Enterococos, ação reduzida contra estafilococos"
    },
    "segundaEscolha": {
      "nome": "Clindamicina",
      "classe": "Lincosamidas",
      "doseAdulto": "600mg a cada 8h VO, EV",
      "doseMaximaAdulto": "4.8g/dia (EV)",
      "dosePediatrico": "40mg/kg/dia (6/6h)",
      "espectroAcao": "Anaeróbios e Gram-positivos",
      "viaAdmin": "VO, EV",
      "observacoes": "Risco de colite por C. difficile. Associar para cobrir Gram-negativos"
    }
  },
  {
    "doencaPatologia": "Infecções por SARM",
    "microrganismo": "Staphylococcus aureus resistente à meticilina",
    "ajusteRenalHepatico": "Sim, para Vancomicina",
    "perfilSensibilidadeTipoInfeccao": "Gram-positivo resistente",
    "primeiraEscolha": {
      "nome": "Vancomicina",
      "classe": "Glicopeptídeos",
      "doseAdulto": "500mg de 6/6h ou 1g de 12/12h EV",
      "doseMaximaAdulto": "Dose ajustada por nível sérico",
      "dosePediatrico": "40mg/kg/dia 6/8h EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Monitorar função renal e nível sérico, não usar indiscriminadamente."
    },
    "segundaEscolha": {
      "nome": "Linezolida",
      "classe": "Oxazolidinonas",
      "doseAdulto": "600mg 12/12h VO, EV",
      "doseMaximaAdulto": "1.2g/dia",
      "dosePediatrico": "10mg/kg 12/12h VO/EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "VO, EV",
      "observacoes": "Uso restrito, risco de mielossupressão e neuropatia com uso prolongado."
    }
  },
  {
    "doencaPatologia": "Infecções por Staph. epidermidis",
    "microrganismo": "Staphylococcus epidermidis",
    "ajusteRenalHepatico": "Sim, para Vancomicina e Teicoplanina",
    "perfilSensibilidadeTipoInfeccao": "Gram-positivo, frequentemente associado a dispositivos médicos",
    "primeiraEscolha": {
      "nome": "Vancomicina",
      "classe": "Glicopeptídeos",
      "doseAdulto": "500mg de 6/6h ou 1g de 12/12h EV",
      "doseMaximaAdulto": "Dose ajustada por nível sérico",
      "dosePediatrico": "40mg/kg/dia 6/8h EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Monitorar função renal e nível sérico, não usar indiscriminadamente."
    },
    "segundaEscolha": {
      "nome": "Teicoplanina",
      "classe": "Glicopeptídeos",
      "doseAdulto": "400mg a 800mg EV/IM",
      "doseMaximaAdulto": "Dose ajustada por nível sérico",
      "dosePediatrico": "10-15mg/kg/dia EV/IM",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV, IM",
      "observacoes": "Melhor tolerabilidade renal que a Vancomicina, pode ser administrado por via IM."
    }
  },
  {
    "doencaPatologia": "Pacientes alérgicos à penicilina",
    "microrganismo": "Depende da infecção",
    "ajusteRenalHepatico": "Sim, para Vancomicina",
    "perfilSensibilidadeTipoInfeccao": "Alternativa para alérgicos",
    "primeiraEscolha": {
      "nome": "Vancomicina",
      "classe": "Glicopeptídeos",
      "doseAdulto": "500mg de 6/6h ou 1g de 12/12h EV",
      "doseMaximaAdulto": "Dose ajustada por nível sérico",
      "dosePediatrico": "40mg/kg/dia 6/8h EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Monitorar função renal e nível sérico, não usar indiscriminadamente."
    },
    "segundaEscolha": {
      "nome": "Aztreonam",
      "classe": "Monobactâmicos",
      "doseAdulto": "1-2g a cada 8-12h EV",
      "doseMaximaAdulto": "8g/dia",
      "dosePediatrico": "120mg/kg/dia (8/8h)",
      "espectroAcao": "Apenas Gram-negativos",
      "viaAdmin": "EV",
      "observacoes": "Sem atividade contra Gram-positivos ou anaeróbios. Baixo potencial alergênico."
    }
  },
  {
    "doencaPatologia": "Infecções leves a moderadas (respiratórias, pele)",
    "microrganismo": "Streptococcus",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Gram-positivo",
    "primeiraEscolha": {
      "nome": "Penicilina G procaína",
      "classe": "Penicilinas",
      "doseAdulto": "400.000 U a cada 12-24h IM",
      "doseMaximaAdulto": "4.8 milhões U/dia",
      "dosePediatrico": "50.000 U/kg/dia (12/24h)",
      "espectroAcao": "Semelhante à Penicilina G cristalina",
      "viaAdmin": "IM",
      "observacoes": "Não cruza a barreira hematoencefálica (BHE) em níveis terapêuticos."
    },
    "segundaEscolha": {
      "nome": "Amoxicilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg 8/8h VO",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "30-50mg/kg/dia - 8/8h VO",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "VO",
      "observacoes": "Resistência comum em E. coli, evitar como escolha empírica para ITU"
    }
  },
  {
    "doencaPatologia": "Sífilis",
    "microrganismo": "Treponema pallidum",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Doença sexualmente transmissível",
    "primeiraEscolha": {
      "nome": "Penicilina G benzatina",
      "classe": "Penicilinas",
      "doseAdulto": "1,2 a 2,4 milhões U IM (dose única)",
      "doseMaximaAdulto": "Variável (protocolo específico)",
      "dosePediatrico": "50.000 U/kg (dose única)",
      "espectroAcao": "Treponema pallidum",
      "viaAdmin": "IM",
      "observacoes": "Dose única para a maioria das indicações, longa duração de ação."
    },
    "segundaEscolha": {
      "nome": "Penicilina G procaína",
      "classe": "Penicilinas",
      "doseAdulto": "400.000 U a cada 12-24h IM",
      "doseMaximaAdulto": "4.8 milhões U/dia",
      "dosePediatrico": "50.000 U/kg/dia (12/24h)",
      "espectroAcao": "Semelhante à Penicilina G cristalina",
      "viaAdmin": "IM",
      "observacoes": "Não cruza a barreira hematoencefálica (BHE) em níveis terapêuticos."
    }
  },
  {
    "doencaPatologia": "Profilaxia de febre reumática",
    "microrganismo": "Streptococcus pyogenes",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Profilaxia, Gram-positivo",
    "primeiraEscolha": {
      "nome": "Penicilina G benzatina",
      "classe": "Penicilinas",
      "doseAdulto": "1,2 a 2,4 milhões U IM",
      "doseMaximaAdulto": "Variável (protocolo específico)",
      "dosePediatrico": "50.000 U/kg (dose única)",
      "espectroAcao": "Treponema pallidum",
      "viaAdmin": "IM",
      "observacoes": "Dose única para a maioria das indicações, longa duração de ação."
    },
    "segundaEscolha": {
      "nome": "-",
      "classe": "-",
      "doseAdulto": "-",
      "doseMaximaAdulto": "-",
      "dosePediatrico": "-",
      "espectroAcao": "-",
      "viaAdmin": "-",
      "observacoes": "-"
    }
  },
  {
    "doencaPatologia": "ITU por enterococos",
    "microrganismo": "Enterococcus faecalis",
    "ajusteRenalHepatico": "Sim, para Vancomicina",
    "perfilSensibilidadeTipoInfeccao": "Gram-positivo",
    "primeiraEscolha": {
      "nome": "Ampicilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg-1g a cada 6h VO, EV",
      "doseMaximaAdulto": "14g/dia",
      "dosePediatrico": "200mg/kg/dia (6/6h)",
      "espectroAcao": "Gram-positivos e alguns Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Cobertura limitada para Gram-negativos, associar para tratamento empírico"
    },
    "segundaEscolha": {
      "nome": "Vancomicina",
      "classe": "Glicopeptídeos",
      "doseAdulto": "500mg de 6/6h ou 1g de 12/12h EV",
      "doseMaximaAdulto": "Dose ajustada por nível sérico",
      "dosePediatrico": "40mg/kg/dia 6/8h EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Monitorar função renal e nível sérico, não usar indiscriminadamente."
    }
  },
  {
    "doencaPatologia": "Meningite (Listeria)",
    "microrganismo": "Listeria monocytogenes",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção grave do SNC",
    "primeiraEscolha": {
      "nome": "Ampicilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg-1g a cada 6h VO, EV",
      "doseMaximaAdulto": "14g/dia",
      "dosePediatrico": "200mg/kg/dia (6/6h)",
      "espectroAcao": "Gram-positivos e alguns Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Cobertura limitada para Gram-negativos, associar para tratamento empírico"
    },
    "segundaEscolha": {
      "nome": "Meropenem",
      "classe": "Carbapenemos",
      "doseAdulto": "500mg-1g a cada 8h EV",
      "doseMaximaAdulto": "6g/dia",
      "dosePediatrico": "60-120mg/kg/dia (8/8h)",
      "espectroAcao": "Semelhante ao imipenem",
      "viaAdmin": "EV",
      "observacoes": "Menor risco de convulsão que o imipenem, melhor perfil para infecções do SNC."
    }
  },
  {
    "doencaPatologia": "Endocardite",
    "microrganismo": "Enterococcus, Staphylococcus, Streptococcus",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção grave, Gram-positivo",
    "primeiraEscolha": {
      "nome": "Ampicilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg-1g a cada 6h VO, EV",
      "doseMaximaAdulto": "14g/dia",
      "dosePediatrico": "200mg/kg/dia (6/6h)",
      "espectroAcao": "Gram-positivos e alguns Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Cobertura limitada para Gram-negativos, associar para tratamento empírico"
    },
    "segundaEscolha": {
      "nome": "Daptomicina",
      "classe": "Lipopeptídeos",
      "doseAdulto": "4-6mg/kg/dia EV",
      "doseMaximaAdulto": "Até 12mg/kg/dia",
      "dosePediatrico": "8-10mg/kg/dia EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Não usar em pneumonia, pois é inativada pelo surfactante pulmonar."
    }
  },
  {
    "doencaPatologia": "Infecções por S. aureus produtor de penicilinase (sensível à meticilina)",
    "microrganismo": "Staphylococcus aureus (MSSA)",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção estafilocócica grave (não-MRSA)",
    "primeiraEscolha": {
      "nome": "Oxacilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg-1g a cada 4-6h EV",
      "doseMaximaAdulto": "12g/dia",
      "dosePediatrico": "200mg/kg/dia (6/6h)",
      "espectroAcao": "Staphylococcus",
      "viaAdmin": "EV",
      "observacoes": "Antibiótico de escolha para infecções estafilocócicas graves (não-MRSA)."
    },
    "segundaEscolha": {
      "nome": "Cefazolina",
      "classe": "Cefalosporina 1ª",
      "doseAdulto": "1g a cada 8h EV",
      "doseMaximaAdulto": "6g/dia (até 12g/dia em infecções graves)",
      "dosePediatrico": "100-150mg/kg/dia (6/6h)",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Maior meia-vida entre as cefalosporinas de 1ª geração."
    }
  },
  {
    "doencaPatologia": "Profilaxia cirúrgica",
    "microrganismo": "Cocos Gram-positivos da pele",
    "ajusteRenalHepatico": "Sim, para Vancomicina",
    "perfilSensibilidadeTipoInfeccao": "Profilaxia, Gram-positivo",
    "primeiraEscolha": {
      "nome": "Cefazolina",
      "classe": "Cefalosporina 1ª",
      "doseAdulto": "1g a cada 8h EV",
      "doseMaximaAdulto": "6g/dia (até 12g/dia em infecções graves)",
      "dosePediatrico": "100-150mg/kg/dia (6/6h)",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Maior meia-vida entre as cefalosporinas de 1ª geração."
    },
    "segundaEscolha": {
      "nome": "Vancomicina",
      "classe": "Glicopeptídeos",
      "doseAdulto": "500mg de 6/6h ou 1g de 12/12h EV",
      "doseMaximaAdulto": "Dose ajustada por nível sérico",
      "dosePediatrico": "40mg/kg/dia 6/8h EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Monitorar função renal e nível sérico, não usar indiscriminadamente."
    }
  },
  {
    "doencaPatologia": "Pneumonia comunitária",
    "microrganismo": "Streptococcus pneumoniae, Haemophilus influenzae, Moraxella catarrhalis",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção comunitária, respiratória",
    "primeiraEscolha": {
      "nome": "Cefuroxima",
      "classe": "Cefalosporina 2ª",
      "doseAdulto": "500mg a cada 12h VO, EV",
      "doseMaximaAdulto": "4.5g/dia (EV)",
      "dosePediatrico": "20-40mg/kg/dia (8/8h)",
      "espectroAcao": "Gram-positivos e alguns Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Alternativa a SMZ/TMP para infecções respiratórias."
    },
    "segundaEscolha": {
      "nome": "Amoxicilina-clavulanato",
      "classe": "Penicilinas + Inibidores de beta-lactamase",
      "doseAdulto": "500mg a cada 8h VO, EV",
      "doseMaximaAdulto": "4g/dia (componente amoxicilina)",
      "dosePediatrico": "25-50mg/kg/dia (8/8h)",
      "espectroAcao": "Amoxicilina + cobertura para produtores de beta-lactamase",
      "viaAdmin": "VO, EV",
      "observacoes": "Diarreia é um efeito adverso frequente."
    }
  },
  {
    "doencaPatologia": "Infecções por Pseudomonas aeruginosa (pneumonia, sepse)",
    "microrganismo": "Pseudomonas aeruginosa",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção grave, hospitalar",
    "primeiraEscolha": {
      "nome": "Ceftazidima",
      "classe": "Cefalosporina 3ª",
      "doseAdulto": "1-2g a cada 8h EV",
      "doseMaximaAdulto": "6g/dia",
      "dosePediatrico": "90-150mg/kg/dia (8/8h)",
      "espectroAcao": "Forte ação contra Pseudomonas",
      "viaAdmin": "EV",
      "observacoes": "Associar a outro antipseudomonal em infecções graves para evitar resistência."
    },
    "segundaEscolha": {
      "nome": "Piperacilina-tazobactam",
      "classe": "Penicilinas + Inibidores de beta-lactamase",
      "doseAdulto": "3.375g a 4.5g a cada 6h EV",
      "doseMaximaAdulto": "18g/dia (componente piperacilina)",
      "dosePediatrico": "300mg/kg/dia (6/6h)",
      "espectroAcao": "Muito amplo espectro",
      "viaAdmin": "EV",
      "observacoes": "Cobre Pseudomonas aeruginosa. Droga de amplo espectro."
    }
  },
  {
    "doencaPatologia": "Infecções hospitalares graves por bacilos Gram-negativos (BGN)",
    "microrganismo": "Bacilos Gram-negativos",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção hospitalar grave",
    "primeiraEscolha": {
      "nome": "Cefepima",
      "classe": "Cefalosporina 4ª",
      "doseAdulto": "1-2g a cada 12h EV",
      "doseMaximaAdulto": "6g/dia",
      "dosePediatrico": "100-150mg/kg/dia (8/8h)",
      "espectroAcao": "Amplo espectro",
      "viaAdmin": "EV",
      "observacoes": "Reservar para infecções complexas e hospitalares."
    },
    "segundaEscolha": {
      "nome": "Meropenem",
      "classe": "Carbapenemos",
      "doseAdulto": "500mg-1g a cada 8h EV",
      "doseMaximaAdulto": "6g/dia",
      "dosePediatrico": "60-120mg/kg/dia (8/8h)",
      "espectroAcao": "Semelhante ao imipenem",
      "viaAdmin": "EV",
      "observacoes": "Menor risco de convulsão que o imipenem, melhor perfil para infecções do SNC."
    }
  },
  {
    "doencaPatologia": "Neutropenia febril",
    "microrganismo": "Vários, including Pseudomonas aeruginosa",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Paciente imunocomprometido, infecção grave",
    "primeiraEscolha": {
      "nome": "Cefepima",
      "classe": "Cefalosporina 4ª",
      "doseAdulto": "1-2g a cada 12h EV",
      "doseMaximaAdulto": "6g/dia",
      "dosePediatrico": "100-150mg/kg/dia (8/8h)",
      "espectroAcao": "Amplo espectro",
      "viaAdmin": "EV",
      "observacoes": "Reservar para infecções complexas e hospitalares."
    },
    "segundaEscolha": {
      "nome": "Meropenem",
      "classe": "Carbapenemos",
      "doseAdulto": "500mg-1g a cada 8h EV",
      "doseMaximaAdulto": "6g/dia",
      "dosePediatrico": "60-120mg/kg/dia (8/8h)",
      "espectroAcao": "Semelhante ao imipenem",
      "viaAdmin": "EV",
      "observacoes": "Menor risco de convulsão que o imipenem, melhor perfil para infecções do SNC."
    }
  },
  {
    "doencaPatologia": "Mordidas",
    "microrganismo": "Pasteurella, Capnocytophaga, anaeróbios, Staphylococcus, Streptococcus",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Polimicrobiana",
    "primeiraEscolha": {
      "nome": "Amoxicilina-clavulanato",
      "classe": "Penicilinas + Inibidores de beta-lactamase",
      "doseAdulto": "500mg a cada 8h VO, EV",
      "doseMaximaAdulto": "4g/dia (componente amoxicilina)",
      "dosePediatrico": "25-50mg/kg/dia (8/8h)",
      "espectroAcao": "Amoxicilina + cobertura para produtores de beta-lactamase",
      "viaAdmin": "VO, EV",
      "observacoes": "Diarreia é um efeito adverso frequente."
    },
    "segundaEscolha": {
      "nome": "-",
      "classe": "-",
      "doseAdulto": "-",
      "doseMaximaAdulto": "-",
      "dosePediatrico": "-",
      "espectroAcao": "-",
      "viaAdmin": "-",
      "observacoes": "-"
    }
  },
  {
    "doencaPatologia": "Infecções intra-abdominais",
    "microrganismo": "Bacilos Gram-negativos, anaeróbios, Enterococcus",
    "ajusteRenalHepatico": "Sim, para Imipenem",
    "perfilSensibilidadeTipoInfeccao": "Polimicrobiana, infecção grave",
    "primeiraEscolha": {
      "nome": "Piperacilina-tazobactam",
      "classe": "Penicilinas + Inibidores de beta-lactamase",
      "doseAdulto": "3.375g a 4.5g a cada 6h EV",
      "doseMaximaAdulto": "18g/dia (componente piperacilina)",
      "dosePediatrico": "300mg/kg/dia (6/6h)",
      "espectroAcao": "Muito amplo espectro",
      "viaAdmin": "EV",
      "observacoes": "Cobre Pseudomonas aeruginosa. Droga de amplo espectro"
    },
    "segundaEscolha": {
      "nome": "Imipenem",
      "classe": "Carbapenemos",
      "doseAdulto": "500mg a cada 6h EV",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "60mg/kg/dia (6/6h)",
      "espectroAcao": "Espectro muito amplo",
      "viaAdmin": "EV",
      "observacoes": "Risco de convulsões, especialmente em pacientes com disfunção renal ou lesão do SNC."
    }
  },
  {
    "doencaPatologia": "Infecções polimicrobianas graves",
    "microrganismo": "Múltiplos microrganismos (Gram-positivos, Gram-negativos, anaeróbios)",
    "ajusteRenalHepatico": "Sim, para Imipenem",
    "perfilSensibilidadeTipoInfeccao": "Infecção grave, amplo espectro",
    "primeiraEscolha": {
      "nome": "Imipenem",
      "classe": "Carbapenemos",
      "doseAdulto": "500mg a cada 6h EV",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "60mg/kg/dia (6/6h)",
      "espectroAcao": "Espectro muito amplo",
      "viaAdmin": "EV",
      "observacoes": "Risco de convulsões, especialmente em pacientes com disfunção renal ou lesão do SNC."
    },
    "segundaEscolha": {
      "nome": "Meropenem",
      "classe": "Carbapenemos",
      "doseAdulto": "500mg-1g a cada 8h EV",
      "doseMaximaAdulto": "6g/dia",
      "dosePediatrico": "60-120mg/kg/dia (8/8h)",
      "espectroAcao": "Semelhante ao imipenem",
      "viaAdmin": "EV",
      "observacoes": "Menor risco de convulsão que o imipenem, melhor perfil para infecções do SNC."
    }
  },
  {
    "doencaPatologia": "Infecções abdominais/pélvicas complicadas",
    "microrganismo": "Bacilos Gram-negativos, anaeróbios",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção complicada, amplo espectro (com exceções)",
    "primeiraEscolha": {
      "nome": "Ertapenem",
      "classe": "Carbapenemos",
      "doseAdulto": "1g/dia (dose única) EV",
      "doseMaximaAdulto": "1g/dia",
      "dosePediatrico": "-",
      "espectroAcao": "Amplo espectro, mas não cobre Pseudomonas, Acinetobacter ou Enterococcus",
      "viaAdmin": "EV",
      "observacoes": "Não cobre Pseudomonas, Acinetobacter ou Enterococcus. Dose única diária."
    },
    "segundaEscolha": {
      "nome": "Piperacilina-tazobactam",
      "classe": "Penicilinas + Inibidores de beta-lactamase",
      "doseAdulto": "3.375g a 4.5g a cada 6h EV",
      "doseMaximaAdulto": "18g/dia (componente piperacilina)",
      "dosePediatrico": "300mg/kg/dia (6/6h)",
      "espectroAcao": "Muito amplo espectro",
      "viaAdmin": "EV",
      "observacoes": "Cobre Pseudomonas aeruginosa. Droga de amplo espectro"
    }
  },
  {
    "doencaPatologia": "Infecções por BGN (alternativa a aminoglicosídeos em alérgicos a beta-lactâmicos)",
    "microrganismo": "Bacilos Gram-negativos",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Gram-negativo, alternativa para alérgicos",
    "primeiraEscolha": {
      "nome": "Aztreonam",
      "classe": "Monobactâmicos",
      "doseAdulto": "1-2g a cada 8-12h EV",
      "doseMaximaAdulto": "8g/dia",
      "dosePediatrico": "120mg/kg/dia (8/8h)",
      "espectroAcao": "Apenas Gram-negativos",
      "viaAdmin": "EV",
      "observacoes": "Sem atividade contra Gram-positivos ou anaeróbios. Baixo potencial alergênico."
    },
    "segundaEscolha": {
      "nome": "-",
      "classe": "-",
      "doseAdulto": "-",
      "doseMaximaAdulto": "-",
      "dosePediatrico": "-",
      "espectroAcao": "-",
      "viaAdmin": "-",
      "observacoes": "-"
    }
  },
  {
    "doencaPatologia": "Infecções anaeróbias (pulmonares, pélvicas), abscessos",
    "microrganismo": "Anaeróbios",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Anaeróbios",
    "primeiraEscolha": {
      "nome": "Clindamicina",
      "classe": "Lincosamidas",
      "doseAdulto": "600mg a cada 8h VO, EV",
      "doseMaximaAdulto": "4.8g/dia (EV)",
      "dosePediatrico": "40mg/kg/dia (6/6h)",
      "espectroAcao": "Anaeróbios e Gram-positivos",
      "viaAdmin": "VO, EV",
      "observacoes": "Risco de colite por C. difficile. Associar para cobrir Gram-negativos"
    },
    "segundaEscolha": {
      "nome": "Metronidazol",
      "classe": "Nitroimidazóis",
      "doseAdulto": "500mg a cada 8h VO, EV",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "30mg/kg/dia (8/8h)",
      "espectroAcao": "Anaeróbios estritos",
      "viaAdmin": "VO, EV",
      "observacoes": "Evitar consumo de álcool (efeito dissulfiram)."
    }
  },
  {
    "doencaPatologia": "C. difficile",
    "microrganismo": "Clostridioides difficile",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção por anaeróbio Gram-positivo",
    "primeiraEscolha": {
      "nome": "Metronidazol",
      "classe": "Nitroimidazóis",
      "doseAdulto": "500mg a cada 8h VO, EV",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "30mg/kg/dia (8/8h)",
      "espectroAcao": "Anaeróbios estritos",
      "viaAdmin": "VO, EV",
      "observacoes": "Evitar consumo de álcool (efeito dissulfiram)."
    },
    "segundaEscolha": {
      "nome": "Vancomicina",
      "classe": "Glicopeptídeos",
      "doseAdulto": "Administrada por via oral para esta indicação (dose não especificada no documento)",
      "doseMaximaAdulto": "-",
      "dosePediatrico": "-",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "VO",
      "observacoes": "Não absorvida sistemicamente quando administrada por via oral."
    }
  },
  {
    "doencaPatologia": "Tricomoníase",
    "microrganismo": "Trichomonas vaginalis",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção por protozoário",
    "primeiraEscolha": {
      "nome": "Metronidazol",
      "classe": "Nitroimidazóis",
      "doseAdulto": "500mg a cada 8h VO, EV",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "30mg/kg/dia (8/8h)",
      "espectroAcao": "Anaeróbios estritos",
      "viaAdmin": "VO, EV",
      "observacoes": "Evitar consumo de álcool (efeito dissulfiram)."
    },
    "segundaEscolha": {
      "nome": "-",
      "classe": "-",
      "doseAdulto": "-",
      "doseMaximaAdulto": "-",
      "dosePediatrico": "-",
      "espectroAcao": "-",
      "viaAdmin": "-",
      "observacoes": "-"
    }
  },
  {
    "doencaPatologia": "Giardíase",
    "microrganismo": "Giardia lamblia",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção por protozoário",
    "primeiraEscolha": {
      "nome": "Metronidazol",
      "classe": "Nitroimidazóis",
      "doseAdulto": "500mg a cada 8h VO, EV",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "30mg/kg/dia (8/8h)",
      "espectroAcao": "Anaeróbios estritos",
      "viaAdmin": "VO, EV",
      "observacoes": "Evitar consumo de álcool (efeito dissulfiram)."
    },
    "segundaEscolha": {
      "nome": "-",
      "classe": "-",
      "doseAdulto": "-",
      "doseMaximaAdulto": "-",
      "dosePediatrico": "-",
      "espectroAcao": "-",
      "viaAdmin": "-",
      "observacoes": "-"
    }
  },
  {
    "doencaPatologia": "ITU complicada",
    "microrganismo": "Bacilos Gram-negativos",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção complicada, Gram-negativo",
    "primeiraEscolha": {
      "nome": "Ciprofloxacina",
      "classe": "Quinolonas",
      "doseAdulto": "500mg a cada 12h VO, EV",
      "doseMaximaAdulto": "1.5g/dia (VO)",
      "dosePediatrico": "20-30mg/kg/dia (12/12h)",
      "espectroAcao": "Excelente ação contra Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Evitar em crianças/gestantes; resistência crescente; fraca ação contra pneumococo"
    },
    "segundaEscolha": {
      "nome": "Ceftriaxona",
      "classe": "Cefalosporina 3ª",
      "doseAdulto": "1-2g 12/12h ou 24/24h EV, IM",
      "doseMaximaAdulto": "4g/dia",
      "dosePediatrico": "50-100mg/kg/dia EV",
      "espectroAcao": "Amplo espectro",
      "viaAdmin": "EV, IM",
      "observacoes": "Não cobre Pseudomonas e Enterococos, ação reduzida contra estafilococos"
    }
  },
  {
    "doencaPatologia": "Osteomielite",
    "microrganismo": "Staphylococcus aureus, bacilos Gram-negativos",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção óssea",
    "primeiraEscolha": {
      "nome": "Ciprofloxacina",
      "classe": "Quinolonas",
      "doseAdulto": "500mg a cada 12h VO, EV",
      "doseMaximaAdulto": "1.5g/dia (VO)",
      "dosePediatrico": "20-30mg/kg/dia (12/12h)",
      "espectroAcao": "Excelente ação contra Gram-negativos",
      "viaAdmin": "VO, EV",
      "observacoes": "Evitar em crianças/gestantes; resistência crescente; fraca ação contra pneumococo"
    },
    "segundaEscolha": {
      "nome": "Oxacilina",
      "classe": "Penicilinas",
      "doseAdulto": "500mg-1g a cada 4-6h EV",
      "doseMaximaAdulto": "12g/dia",
      "dosePediatrico": "200mg/kg/dia (6/6h)",
      "espectroAcao": "Staphylococcus",
      "viaAdmin": "EV",
      "observacoes": "Antibiótico de escolha para infecções estafilocócicas graves (não-MRSA)."
    }
  },
  {
    "doencaPatologia": "Profilaxia e tratamento de Pneumocystis jirovecii",
    "microrganismo": "Pneumocystis jirovecii",
    "ajusteRenalHepatico": "Sim",
    "perfilSensibilidadeTipoInfeccao": "Infecção fúngica em imunocomprometidos",
    "primeiraEscolha": {
      "nome": "Sulfametoxazol-Trimetoprim",
      "classe": "Sulfonamidas",
      "doseAdulto": "800/160mg a cada 12h VO, EV",
      "doseMaximaAdulto": "Dose ajustada para função renal",
      "dosePediatrico": "40/8mg/kg/dia (12/12h)",
      "espectroAcao": "Amplo espectro",
      "viaAdmin": "VO, EV",
      "observacoes": "Barato, mas com altas taxas de resistência bacteriana"
    },
    "segundaEscolha": {
      "nome": "-",
      "classe": "-",
      "doseAdulto": "-",
      "doseMaximaAdulto": "-",
      "dosePediatrico": "-",
      "espectroAcao": "-",
      "viaAdmin": "-",
      "observacoes": "-"
    }
  },
  {
    "doencaPatologia": "Pneumonia nosocomial",
    "microrganismo": "SARM, outros Gram-positivos resistentes",
    "ajusteRenalHepatico": "Sim, para Vancomicina",
    "perfilSensibilidadeTipoInfeccao": "Infecção hospitalar, Gram-positivo resistente",
    "primeiraEscolha": {
      "nome": "Linezolida",
      "classe": "Oxazolidinonas",
      "doseAdulto": "600mg 12/12h VO, EV",
      "doseMaximaAdulto": "1.2g/dia",
      "dosePediatrico": "10mg/kg 12/12h VO/EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "VO, EV",
      "observacoes": "Uso restrito, risco de mielossupressão e neuropatia com uso prolongado."
    },
    "segundaEscolha": {
      "nome": "Vancomicina",
      "classe": "Glicopeptídeos",
      "doseAdulto": "500mg de 6/6h ou 1g de 12/12h EV",
      "doseMaximaAdulto": "Dose ajustada por nível sérico",
      "dosePediatrico": "40mg/kg/dia 6/8h EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Monitorar função renal e nível sérico, não usar indiscriminadamente."
    }
  },
  {
    "doencaPatologia": "Bacteremia por Gram-positivos resistentes",
    "microrganismo": "SARM, Enterococcus resistente à vancomicina (VRE)",
    "ajusteRenalHepatico": "Não informado no documento",
    "perfilSensibilidadeTipoInfeccao": "Infecção grave da corrente sanguínea, Gram-positivo resistente",
    "primeiraEscolha": {
      "nome": "Daptomicina",
      "classe": "Lipopeptídeos",
      "doseAdulto": "4-6mg/kg/dia EV",
      "doseMaximaAdulto": "Até 12mg/kg/dia",
      "dosePediatrico": "8-10mg/kg/dia EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "EV",
      "observacoes": "Não usar em pneumonia, pois é inativada pelo surfactante pulmonar."
    },
    "segundaEscolha": {
      "nome": "Linezolida",
      "classe": "Oxazolidinonas",
      "doseAdulto": "600mg 12/12h VO, EV",
      "doseMaximaAdulto": "1.2g/dia",
      "dosePediatrico": "10mg/kg 12/12h VO/EV",
      "espectroAcao": "Gram-positivos",
      "viaAdmin": "VO, EV",
      "observacoes": "Uso restrito, risco de mielossupressão e neuropatia com uso prolongado."
    }
  }
];

// Tabela 2: Foco em busca por Antibiótico
final List<Map<String, dynamic>> dadosPorAntibiotico = [
  {
    "nomeAntibiotico": "Penicilina G cristalina",
    "classeGrupo": "Penicilinas",
    "doseAdulto": "2 a 4 MU a cada 4-6h EV",
    "doseMaximaAdulto": "24 MU/dia",
    "dosePediatrico": "50.000 a 100.000 U/kg/dia EV",
    "indicacoesDoencas": "Faringite, Impetigo, Erisipela, Meningite, Infecções odontogênicas",
    "espectroAcao": "Gram-positivos (estreptococos), meningococos, pneumococos, Treponema pallidum",
    "viaAdmin": "EV",
    "obsImportantes": "Não cobre Staphylococcus; cuidado com resistência pneumocócica."
  },
  {
    "nomeAntibiotico": "Amoxicilina",
    "classeGrupo": "Penicilinas",
    "doseAdulto": "500mg 8/8h VO",
    "doseMaximaAdulto": "4g/dia",
    "dosePediatrico": "30-50mg/kg/dia ÷ 8/8h VO",
    "indicacoesDoencas": "Bronquite, Sinusite, Otite, Infecção urinária enterocócica leve",
    "espectroAcao": "Gram-positivos, Haemophilus, Moraxella, Klebsiella, H. pylori",
    "viaAdmin": "VO",
    "obsImportantes": "Resistência comum em E. coli; evitar como escolha empírica para ITU."
  },
  {
    "nomeAntibiotico": "Cefalexina",
    "classeGrupo": "Cefalosporina 1ª geração",
    "doseAdulto": "500mg de 6/6h VO",
    "doseMaximaAdulto": "4g/dia",
    "dosePediatrico": "50-100mg/kg/dia ÷ 6/6h VO",
    "indicacoesDoencas": "Infecções de pele e tecidos moles, ITU leve, faringite estreptocócica",
    "espectroAcao": "Gram-positivos (Staph. aureus sensível, estreptococos) e alguns Gram-negativos (E. coli, Klebsiella)",
    "viaAdmin": "VO",
    "obsImportantes": "Não usar para meningite; atividade limitada contra gram-negativos."
  },
  {
    "nomeAntibiotico": "Ceftriaxona",
    "classeGrupo": "Cefalosporina 3ª geração",
    "doseAdulto": "1-2g 12/12h ou 24/24h EV",
    "doseMaximaAdulto": "4g/dia",
    "dosePediatrico": "50-100mg/kg/dia EV",
    "indicacoesDoencas": "Meningite, Sepse urinária, Pneumonia grave, Gonorreia, DIP",
    "espectroAcao": "Amplo espectro para Gram-negativos, Pneumococos, Meningococos, Haemophilus",
    "viaAdmin": "EV, IM",
    "obsImportantes": "Não cobre Pseudomonas e Enterococos; ação reduzida contra estafilococos."
  },
  {
    "nomeAntibiotico": "Vancomicina",
    "classeGrupo": "Glicopeptídeos",
    "doseAdulto": "500mg de 6/6h ou 1g 12/12h EV",
    "doseMaximaAdulto": "Dose ajustada por nível sérico",
    "dosePediatrico": "40mg/kg/dia ÷ 6/6h EV",
    "indicacoesDoencas": "Infecções por SARM, Staph. epidermidis, pacientes alérgicos à penicilina",
    "espectroAcao": "Gram-positivos resistentes (SARM, Enterococcus, Clostridium)",
    "viaAdmin": "EV",
    "obsImportantes": "Monitorar função renal e nível sérico; não usar indiscriminadamente."
  },
  {
    "nomeAntibiotico": "Penicilina G procaína",
    "classeGrupo": "Penicilinas",
    "doseAdulto": "400.000 U a cada 12h IM",
    "doseMaximaAdulto": "4.8 milhões U/dia",
    "dosePediatrico": "50.000 U/kg/dia (24/24h)",
    "indicacoesDoencas": "Infecções leves a moderadas (respiratórias, pele), sífilis",
    "espectroAcao": "Semelhante à Penicilina G cristalina",
    "viaAdmin": "IM",
    "obsImportantes": "Não cruza a barreira hematoencefálica (BHE) em níveis terapêuticos."
  },
  {
    "nomeAntibiotico": "Penicilina G benzatina",
    "classeGrupo": "Penicilinas",
    "doseAdulto": "1,2 a 2,4 milhões U (dose única) IM",
    "doseMaximaAdulto": "Variável (protocolos específicos)",
    "dosePediatrico": "50.000 U/kg (dose única)",
    "indicacoesDoencas": "Sífilis, profilaxia de febre reumática",
    "espectroAcao": "Treponema pallidum, Streptococcus pyogenes",
    "viaAdmin": "IM",
    "obsImportantes": "Dose única para a maioria das indicações; longa duração de ação."
  },
  {
    "nomeAntibiotico": "Ampicilina",
    "classeGrupo": "Penicilinas",
    "doseAdulto": "500mg-1g a cada 6h VO/EV",
    "doseMaximaAdulto": "14g/dia",
    "dosePediatrico": "200mg/kg/dia (6/6h)",
    "indicacoesDoencas": "ITU por enterococos, meningite (Listeria), endocardite",
    "espectroAcao": "Gram-positivos (Enterococcus, Listeria) e alguns Gram-negativos",
    "viaAdmin": "VO, EV",
    "obsImportantes": "Cobertura limitada para Gram-negativos; associar para tratamento empírico."
  },
  {
    "nomeAntibiotico": "Oxacilina",
    "classeGrupo": "Penicilinas",
    "doseAdulto": "500mg-1g a cada 4-6h EV",
    "doseMaximaAdulto": "12g/dia",
    "dosePediatrico": "200mg/kg/dia (6/6h)",
    "indicacoesDoencas": "Infecções por S. aureus produtor de penicilinase (sensível à meticilina)",
    "espectroAcao": "Staphylococcus aureus (não-MRSA), Streptococcus",
    "viaAdmin": "EV",
    "obsImportantes": "Antibiótico de escolha para infecções estafilocócicas graves (não-MRSA)."
  },
  {
    "nomeAntibiotico": "Cefazolina",
    "classeGrupo": "Cefalosporina 1ª geração",
    "doseAdulto": "1g a cada 6h EV",
    "doseMaximaAdulto": "6g/dia (até 12g/dia em casos graves)",
    "dosePediatrico": "100-150mg/kg/dia (6/6h)",
    "indicacoesDoencas": "Profilaxia cirúrgica, infecções de pele e tecidos moles",
    "espectroAcao": "Gram-positivos (S. aureus sensível), alguns Gram-negativos",
    "viaAdmin": "EV",
    "obsImportantes": "Maior meia-vida entre as cefalosporinas de 1ª geração."
  },
  {
    "nomeAntibiotico": "Cefuroxima",
    "classeGrupo": "Cefalosporina 2ª geração",
    "doseAdulto": "500mg a cada 12h (VO); 750mg-1.5g a cada 8h (EV)",
    "doseMaximaAdulto": "4.5g/dia (EV)",
    "dosePediatrico": "20-40mg/kg/dia (8/8h)",
    "indicacoesDoencas": "Sinusite, otite, bronquite, pneumonia comunitária",
    "espectroAcao": "Gram-positivos e maior cobertura para Gram-negativos (H. influenzae, Moraxella)",
    "viaAdmin": "VO, EV",
    "obsImportantes": "Alternativa a SMZ/TMP para infecções respiratórias."
  },
  {
    "nomeAntibiotico": "Ceftazidima",
    "classeGrupo": "Cefalosporina 3ª geração",
    "doseAdulto": "1-2g a cada 8h EV",
    "doseMaximaAdulto": "6g/dia",
    "dosePediatrico": "90-150mg/kg/dia (8/8h)",
    "indicacoesDoencas": "Infecções por Pseudomonas aeruginosa (pneumonia, sepse)",
    "espectroAcao": "Forte ação contra Pseudomonas e outros Gram-negativos. Fraca ação contra Gram-positivos.",
    "viaAdmin": "EV",
    "obsImportantes": "Associar a outro antipseudomonal em infecções graves para evitar resistência."
  },
  {
    "nomeAntibiotico": "Cefepima",
    "classeGrupo": "Cefalosporina 4ª geração",
    "doseAdulto": "1-2g a cada 12h ou 8h EV",
    "doseMaximaAdulto": "6g/dia",
    "dosePediatrico": "100-150mg/kg/dia (8/8h)",
    "indicacoesDoencas": "Infecções hospitalares graves por bacilos Gram-negativos (BGN), neutropenia febril",
    "espectroAcao": "Amplo espectro: Gram-positivos e Gram-negativos, incluindo Pseudomonas",
    "viaAdmin": "EV",
    "obsImportantes": "Reservar para infecções complexas e hospitalares."
  },
  {
    "nomeAntibiotico": "Amoxicilina-clavulanato",
    "classeGrupo": "Penicilinas + Inibidores",
    "doseAdulto": "500mg a cada 8h ou 875mg a cada 12h (VO)",
    "doseMaximaAdulto": "4g/dia (componente amoxicilina)",
    "dosePediatrico": "25-50mg/kg/dia (8/8h)",
    "indicacoesDoencas": "Mordidas, infecções abdominais, sinusite, pneumonia comunitária",
    "espectroAcao": "Amoxicilina + cobertura para produtores de beta-lactamase (S. aureus, anaeróbios)",
    "viaAdmin": "VO, EV",
    "obsImportantes": "Diarreia é um efeito adverso frequente."
  },
  {
    "nomeAntibiotico": "Piperacilina-tazobactam",
    "classeGrupo": "Penicilinas + Inibidores",
    "doseAdulto": "3.375g a 4.5g a cada 6h EV",
    "doseMaximaAdulto": "18g/dia (componente piperacilina)",
    "dosePediatrico": "300mg/kg/dia (6/6h)",
    "indicacoesDoencas": "Infecções hospitalares graves, intra-abdominais, pneumonia, sepse",
    "espectroAcao": "Muito amplo espectro: Gram-positivos, Gram-negativos (incluindo Pseudomonas) e anaeróbios",
    "viaAdmin": "EV",
    "obsImportantes": "Cobre Pseudomonas aeruginosa. Droga de amplo espectro."
  },
  {
    "nomeAntibiotico": "Imipenem",
    "classeGrupo": "Carbapenemos",
    "doseAdulto": "500mg a cada 6h EV",
    "doseMaximaAdulto": "4g/dia",
    "dosePediatrico": "60mg/kg/dia (6/6h)",
    "indicacoesDoencas": "Infecções intra-abdominais, sepse, infecções polimicrobianas graves",
    "espectroAcao": "Espectro muito amplo: Gram-positivos, Gram-negativos (incl. Pseudomonas) e anaeróbios",
    "viaAdmin": "EV",
    "obsImportantes": "Risco de convulsões, especialmente em pacientes com disfunção renal ou lesão do SNC."
  },
  {
    "nomeAntibiotico": "Meropenem",
    "classeGrupo": "Carbapenemos",
    "doseAdulto": "500mg-1g a cada 8h EV",
    "doseMaximaAdulto": "6g/dia",
    "dosePediatrico": "60-120mg/kg/dia (8/8h)",
    "indicacoesDoencas": "Meningite, neutropenia febril, infecções hospitalares graves",
    "espectroAcao": "Semelhante ao Imipenem, espectro muito amplo",
    "viaAdmin": "EV",
    "obsImportantes": "Menor risco de convulsão que o Imipenem, melhor perfil para infecções do SNC."
  },
  {
    "nomeAntibiotico": "Ertapenem",
    "classeGrupo": "Carbapenemos",
    "doseAdulto": "1g/dia (dose única) EV",
    "doseMaximaAdulto": "1g/dia",
    "dosePediatrico": "-",
    "indicacoesDoencas": "Infecções abdominais/pélvicas complicadas, pneumonia comunitária",
    "espectroAcao": "Amplo espectro, mas com falhas importantes",
    "viaAdmin": "EV",
    "obsImportantes": "Não cobre Pseudomonas, Acinetobacter ou Enterococcus. Dose única diária."
  },
  {
    "nomeAntibiotico": "Aztreonam",
    "classeGrupo": "Monobactâmicos",
    "doseAdulto": "1-2g a cada 8-12h EV",
    "doseMaximaAdulto": "8g/dia",
    "dosePediatrico": "120mg/kg/dia (8/8h)",
    "indicacoesDoencas": "Infecções por BGN (alternativa a aminoglicosídeos em alérgicos a beta-lactâmicos)",
    "espectroAcao": "Apenas Gram-negativos aeróbios (incluindo Pseudomonas)",
    "viaAdmin": "EV",
    "obsImportantes": "Sem atividade contra Gram-positivos ou anaeróbios. Baixo potencial alergênico."
  },
  {
    "nomeAntibiotico": "Clindamicina",
    "classeGrupo": "Lincosamidas",
    "doseAdulto": "600mg a cada 8h VO/EV",
    "doseMaximaAdulto": "4.8g/dia (EV)",
    "dosePediatrico": "40mg/kg/dia (6/6h)",
    "indicacoesDoencas": "Infecções anaeróbias (pulmonares, pélvicas), abscessos, infecções de pele",
    "espectroAcao": "Anaeróbios e Gram-positivos aeróbios (incluindo SARM comunitário)",
    "viaAdmin": "VO, EV",
    "obsImportantes": "Risco de colite por C. difficile. Associar para cobrir Gram-negativos."
  },
  {
    "nomeAntibiotico": "Metronidazol",
    "classeGrupo": "Nitroimidazóis",
    "doseAdulto": "500mg a cada 8h VO/EV",
    "doseMaximaAdulto": "4g/dia",
    "dosePediatrico": "30mg/kg/dia (8/8h)",
    "indicacoesDoencas": "Infecções por anaeróbios, C. difficile, tricomoníase, giardíase",
    "espectroAcao": "Anaeróbios estritos e protozoários",
    "viaAdmin": "VO, EV",
    "obsImportantes": "Evitar consumo de álcool (efeito dissulfiram)."
  },
  {
    "nomeAntibiotico": "Ciprofloxacina",
    "classeGrupo": "Quinolonas",
    "doseAdulto": "500mg a cada 12h VO/EV",
    "doseMaximaAdulto": "1.5g/dia (VO)",
    "dosePediatrico": "20-30mg/kg/dia (12/12h)",
    "indicacoesDoencas": "ITU complicada, osteomielite, infecções por Pseudomonas",
    "espectroAcao": "Excelente ação contra Gram-negativos (incluindo Pseudomonas), atípicos",
    "viaAdmin": "VO, EV",
    "obsImportantes": "Evitar em crianças/gestantes; resistência crescente; fraca ação contra pneumococos."
  },
  {
    "nomeAntibiotico": "Sulfametoxazol-Trimetoprim",
    "classeGrupo": "Sulfonamidas",
    "doseAdulto": "800/160mg a cada 12h VO/EV",
    "doseMaximaAdulto": "Dose ajustada por peso e indicação",
    "dosePediatrico": "40/8mg/kg/dia (12/12h)",
    "indicacoesDoencas": "ITU, bronquite, otite, profilaxia e tratamento de Pneumocystis jirovecii",
    "espectroAcao": "Amplo espectro: Gram-positivos (incl. SARM), Gram-negativos",
    "viaAdmin": "VO, EV",
    "obsImportantes": "Barato, mas com altas taxas de resistência bacteriana."
  },
  {
    "nomeAntibiotico": "Teicoplanina",
    "classeGrupo": "Glicopeptídeos",
    "doseAdulto": "400mg a 800mg por dia EV/IM",
    "doseMaximaAdulto": "Dose ajustada por nível sérico",
    "dosePediatrico": "10-15mg/kg/dia EV/IM",
    "indicacoesDoencas": "Infecções por Gram-positivos resistentes, incluindo SARM",
    "espectroAcao": "Gram-positivos resistentes (Staphylococcus, Streptococcus, Enterococcus)",
    "viaAdmin": "EV, IM",
    "obsImportantes": "Melhor tolerabilidade renal que a Vancomicina; pode ser administrado por via IM."
  },
  {
    "nomeAntibiotico": "Linezolida",
    "classeGrupo": "Oxazolidinonas",
    "doseAdulto": "600mg 12/12h VO/EV",
    "doseMaximaAdulto": "1.2g/dia",
    "dosePediatrico": "10mg/kg 12/12h VO/EV",
    "indicacoesDoencas": "Infecções por SARM, pneumonia nosocomial, infecção de pele",
    "espectroAcao": "Gram-positivos resistentes (SARM, Enterococcus resistente à vancomicina - VRE)",
    "viaAdmin": "VO, EV",
    "obsImportantes": "Uso restrito; risco de mielossupressão e neuropatia com uso prolongado."
  },
  {
    "nomeAntibiotico": "Daptomicina",
    "classeGrupo": "Lipopeptídeos",
    "doseAdulto": "4-6mg/kg/dia EV",
    "doseMaximaAdulto": "Até 12mg/kg/dia",
    "dosePediatrico": "6-10mg/kg/dia EV",
    "indicacoesDoencas": "Endocardite, bacteremia por Gram-positivos resistentes",
    "espectroAcao": "Gram-positivos (exceto pulmonares), SARM, VRE",
    "viaAdmin": "EV",
    "obsImportantes": "Não usar em pneumonia, pois é inativada pelo surfactante pulmonar."
  }
];