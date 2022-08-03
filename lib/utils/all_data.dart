class Topic {
  String title;
  List<PeriodData> periods;

  Topic(
    this.title,
    this.periods,
  );
}

class PeriodData {
  String title;
  List<SuTopic> suTopics;
  String fact;
  String assetsPath;

  PeriodData(
    this.title,
    this.suTopics, {
    this.fact = '',
    required this.assetsPath,
  });
}

class SuTopic {
  String title;
  String info;

  SuTopic(this.title, this.info);
}

List topics = [
  Topic(
    "Instrução à Higiene Bucal",
    [
      PeriodData(
        "De 0 anos até o primeiro dente erupcionar",
        [
          SuTopic(
            'Após a Mamada',
            "Com a gaze/fralda de tecido molhada com água filtrada, passa pela língua bochecha, céu da boca e onde ficariam os dentes respectivamente.\n\n"
                "Não é obrigatório, apenas facilitará a adaptação da criança a escovação mais tardar.",
          ),
          SuTopic(
            "Odontopediatria",
            "As consultas com dentista devem ser periódicas. O odontopediatra é o especialista que cuida da saúde bucal infantil.",
          )
        ],
        fact: "Após a limpeza se tornar hábito a criança não sofrerá de adaptação mais tarde.",
        assetsPath: "assets/babies_learn.png",
      ),
      PeriodData(
        "Enxaguantes Bucais",
        [
          SuTopic(
            "Frequência de Uso",
            "Criança com risco de cárie:"
                "\n 2 vezes ao dia, manhã e noite"
                " criança que não consegue fazer a escovação ideal, usar 3 vezes ao dia manhã, tarde e noite.",
          ),
          SuTopic(
            "Quantidade de enxaguante",
            "Quantidade ideal 5ml, cerca de matade da tampinha do próprio colutório.\n\n"
                "Uso apenas para crianças que já sabem cuspir.",
          ),
        ],
        fact:
            "Não é recomendado pelos odontopediatras o uso de enxaguantes bucais em crianças com baixo risco de cárie e menor que 7 anos.",
        assetsPath: "assets/mouthwash.png",
      ),
      PeriodData(
        "Após erupção do 1° dente até os 12 anos",
        [
          SuTopic(
            "Frequência de escovação",
            "Escovas os dentes 3 vezes ao dia, após as refeições. A noite é o momento mais importante.",
          ),
          SuTopic(
            "Quantidade de creme dental",
            "Para a escovação ideal é necessário ser usado um grão de arros cru de pasta de dente.\n\n"
                "Sempre lembrar que a pasta de dente deve conter flúor, a partir de 1100ppm.",
          ),
          SuTopic(
            "Tipo de escova",
            "Sempre o mais macia possível.\n"
                "Cabeça da escova pequena, cabo reto, cerdas mais finas possíveis.",
          ),
          SuTopic(
            "Uso do fio dental",
            "Usar o fio dental pelo menos 1 vez ao dia, a partir do momento onde estejam 2 dentes juntos (um ao lado do outro).",
          ),
        ],
        fact: "Pasta de dente pode ser a de adulto, se a criança aceitar.",
        assetsPath: "assets/kid.png",
      ),
    ],
  ),
  Topic(
    "Dieta Infantil e saúde bucal",
    [
      PeriodData(
        "Tipos de alimentos",
        [
          SuTopic(
            "Naturais/In Natura",
            "São obtidos diretamente de plantas ou animais e não sofrem qualquer alteração após deixar a natureza.\n\n"
                "Exemplos: legumes, verduras, tubérculos, castanhas, nozes, carne bovina, suína, aves e pescados frescos.",
          ),
          SuTopic(
            "Processados",
            "São fabricados, essencialmente, com adição de sal ou açucar a um alimento in natura, ou minimamente processado.\n\n"
                "Exemplos: queijos, pães, sardinhas enlatadas, frutas em calda e frutas cristalizadas.",
          ),
          SuTopic(
            "Ultra Processados",
            "São feitos principalmente de substâncias extraídas de alimentos, (óleos, gorduras, açúcar, amido e proteínas) substâncias sintetizadas em laboratório,"
                "exemplo de aromatizantes, corantes, realçadores de sabor e vários tipos de aditivos usados para dotar os produtos de propriedades sensoriais atraentes.\n\n"
                "Exemplo: regrigerantes, biscoitos recheados, embutidos, sorvetes e pães de forma.",
          ),
        ],
        assetsPath: "assets/frutas.png",
      ),
      PeriodData(
        "O que se faz consumir ultra processados?",
        [
          SuTopic(
            "Hipersabor",
            "Uma grande diferença entre alimentos naturais e industrializados, especialmente os ultra-apressados, são formulados para serem extremamente saborosos.\n"
                "Isso induz a um hábito alimentar ruim e, às vezes, dependência.",
          ),
          SuTopic(
            "Tamanhos Gigantes",
            "Por seu custo baixo de produção, esses alimentos são comercializados em embalagens enormes, o que pode levar a um consumo involuntário.",
          ),
          SuTopic(
            "Ultra Processados",
            "Podem comprometer os mecanismos que sinalizam a saciedade e controlam o apetite.\n"
                "Isso favorece o consumo excessivo de colorias, contribui para a obesidade e a doença cárie.",
          ),
        ],
        fact:
            "Quanto mais consumo de alimentos ultra processados, maior é o consumo de açúcar, oque acarreta a melhor instalação da doença cárie!",
        assetsPath: "assets/ice cream.png",
      ),
      PeriodData(
        "Açúcares",
        [
          SuTopic(
            "Monossacarídeos",
            "Carboidratos simples, de tamanho reduzido e rápida absorção pelo corpo. "
                "Encontramos na glicose e frutose.",
          ),
          SuTopic(
            "Dissacarídeos",
            "Carboidratos simples, formado por dois monossacarídeos. "
                "Encontramos na sacarose e lactose.",
          ),
          SuTopic(
            "Polissacarídeos",
            "Carboidratos complexos e são lentamente absorvidos pelo corpo. "
                "Encontramos no amido",
          ),
        ],
        fact: "Quanto mais complexo o carboidrato, mais serão ricos em nutrientes, minerais, fibras e vitaminas.",
        assetsPath: "assets/sugar.png",
      ),
    ],
  ),
  Topic(
    "Hábitos Bucais Deletérios",
    [
      PeriodData(
        "Atenção",
        [
          SuTopic(
            "Perigos",
            "Alguns hábitos bucais podem causar problemas na oclusão dos dentes das crianças e para evitar maiores problemas no futuro alguns cuidados podem ser tomados.\n"
                "Um hábito só será capaz de causar um dano se ele tiver uma frequência de 6 ou mais horas diárias.",
          ),
        ],
        assetsPath: "assets/warning.png",
      ),
      PeriodData(
        "Principais Hábitos Bucais",
        [
          SuTopic(
            "Amamentação natural X Artificial",
            "A amamentação natural estimula os músculos boca do bebê.\n"
                "A amamentação artificial pode retardar o desenvolvimento muscular, isso vai depender do tipo de bico usado.\n"
                "Os bicos anatômicos são os que devem ser usados.\n"
                "Eles são mais curtos e achatados, mais parecidos com a anatomia do natural.",
          ),
          SuTopic(
            "Sucção de Chupeta",
            "A necessidade de sucção é algo natural, muitas crianças já iniciam no período intrauterino, com a sucção do dedo.\n"
                "A chupeta poderá ser usada para saciar as necessidades de sucção da criança, sendo melhor que o dedo.\n"
                "Deve ser escolhido um bico anatômico e a quantidade de horas usada não pode ser maior que 6h para não virar um hábito.",
          ),
          SuTopic(
              "Consequências da sucção de chupeta",
              "Mordida aberta anterior com interposição lingual.\n"
                  "Atresia do arco maxilar.\n"
                  "Mordida cruzada posterior.\n\n"
                  "Após os 3 anos é preciso remover a chupeta, após a criança não consiga se adaptar diálogo, acompanhamento psicológico, barrerias mecânicas para impedir a criança de colocar a chupeta e de projetar a linguá (aparelhos feitos pelo ortodontista)."),
          SuTopic(
            "Sucção do dedo",
            "Após as necessidades de sucção serem completadas, caso a criança ainda chupa dedo será por motivos:\n\n"
                "Necessidade fisiológica de sucção.\n"
                "Carência afetiva.\n"
                "Remoção brusca da chupeta.\n"
                "Fome.\n"
                "Tensões emocionais e insegurança.\n"
                "Erupção dentária.\n\n"
                "É preciso observar e procurar ajuda profissional: psicólogo, odontopediatra, nutricionista.",
          ),
          SuTopic(
            "Onicofagia (ato de roer unhas)",
            "È muito comum acontecer com as crianças, é importante observar o que está levando a criança a realizar esse hábito e buscar ajuda profissional.\n"
                "Efeito é sobre a região dos incisivos e caninos, os dentes da frente, onde as unhas são modeladas pelos dentes.\n"
                "È um hábito importante ser evitador, pois a criança tem os dedos sempre disponíveis e isso faz com que ela realize esse hábito por muitas horas diárias.",
          ),
          SuTopic(
            "Interposição Lingual",
            "A postura da língua fica entre os incisivos (dentes da frente) e causam um posicionamento errados dos dentes.\n"
                "Esse tipo de mordida aberta é muito mais difícil de ser tratada.\n"
                "Tratamento:\n\n"
                "- Otorrinolaringologista e/ou fonoaudiólogo\n"
                "- Aparelho ortodôntico\n\n"
                "As Consequências da mordida aberta anterior são na fonação (durante a fala), durante a alimentação e na estética.",
          ),
          SuTopic(
            "Sucção ou interposição de lábio",
            "Incisivos (dentes da frente) ficam vocabularizados (para frente) e com presença de grandes espaços entre os dentes.",
          ),
          SuTopic(
            "Morder objetos",
            "Vai depender de quantas horas por dia.\n\n"
                "Consequências de morder objetos:\n\n"
                "- Projeção de incisivo (dentes da frente)\n"
                "- Mordida aberta anterior\n"
                "- Fraturas nos dentes\n"
                "- Desgastes nas bordas dos dentes",
          ),
          SuTopic(
            "Tratamento dos hábitos bucais",
            "Primeiramente, remoção do hábito, "
                "se a criança não parar de nada adiantará o tratamento com o dentista ortodontista, por isso é preciso saber oque está causando esse hábito na criança, buscando ajuda de outros profissionais.\n"
                "A correção da maloclusão deve ser feita com o ortodontista, um dentista especialista em aparelhos que corrigem a mordida da criança.",
          ),
        ],
        fact:
            "A necessidade de sucção da criança que usa bico artificial é muito maior que a que não usa. Por isso, geralmente, uma criança que usou bico artificial para mamar, tende a precisar de mais tempo de sucção.",
        assetsPath: "assets/chupeta2.png",
      ),
      PeriodData(
        "Bruxismo em crianças",
        [
          SuTopic(
              "O que é?",
              "È o ato de ranger ou apertar os dentes.\n"
                  "Não é natural esse tipo de atividade na cavidade bucal, podendo acontecer com a criança acordada (bruxismo de vigília) ou durante o sono (bruxismo do sono)."),
          SuTopic(
            "O que causa o bruxismo?",
            "Fatores oclusais (contato dos dentes)\n"
                "Ambientais e psicossociais\n"
                "Distúrbios respiratórios\n"
                "Uso de medicamentos\n"
                "Estresse e ansiedade\n"
                "Uso de telas",
          ),
          SuTopic(
            "Sinais e sintomas",
            "Som de rangido doa dentes ao menos 3x por semana.\n"
                "Dentes com desgastes ou fraturados.",
          ),
          SuTopic(
            "Tratamento",
            "O mais importante é descobri a causa. Para isso a criança deve ser avaliada pelo odontopediatra e quando necessário, encaminhada para um tratamento multiprofissional, pois além de fatores estressantes estarem envolvidos a qualidade do sono é outro fator de muita importância.",
          ),
          SuTopic(
            "1° Curiosidade",
            "De todas as causas o que deve ser avaliado com mais precisão é o estresse a ansiedade.\n"
                "Por isso é muito importante observas a estrutura familiar a qual a criança está inserida, se sofre algum tipo de violência, seja física ou verbal, "
                "abandono familiar, etc.\n"
                "A vida social da criança (vai bem na escola? Tem amigos? Sofre bullying?)",
          ),
          SuTopic(
            "2° Curiosidade",
            "Caos o bruxismo não seja tratado corretamente algumas complicações podem surgir no futuro como:\n\n"
                "- Extrema sensibilidade nos dentes desgastados"
                "- Dores de cabeça"
                "- Disfunção temporomandibular"
                "- Fadiga muscular",
          ),
        ],
        assetsPath: "assets/tooth.png",
      ),
      PeriodData(
        "Trauma Dento-Alveolar\nInstrução e Orientação",
        [
          SuTopic(
            "Fratura do Dental",
            "Em casos de acidentes (quedas, pancadas) a criança pode quebrar o dente. Em alguns casos ocorrerá sangramento, a criança vai chorar bastante, principalmente pelo susto do ocorrido.\n\n"
                "O que pode ser feito nesses casos?\n\n"
                "1° Passo: Não se desespere! Limpe o local que sofreu a fratura com soro fisiológico e faze (água corrente é uma boa alternativa).\n"
                "2° Passo: Se estiver ao seu alcance, pegue o fragmento dentário fraturado e armazene em um recipiente com soro fisiológico para conservar corretamente a parte fraturada do dente.\n"
                "3° Passo: Procure imediatamento um cirurgião dentista/odontopediatra.\n"
                "Se fragmento for armazenado corretamento o profissional conseguirá fazer a colagem. Caso o fragmento não esteja em bom estado será feita a restauração convencional.",
          ),
          SuTopic(
            "Avulsão/Perda do Dente",
            "Em casos de acidente (quedas, pancadas) a criança pode perder o dente por completo, ou seja, ele pode sofrer uma avulsão (termo usado na odontologia).\n"
                "O que deve ser feito nesses casos:\n\n"
                "1° Passo: Mantenha a calma1 Provavelmente haverá muito sangramento (È normal que isso aconteça, pois se trata de uma região muito vascularizada), portanto, o local que sofreu o trauma deve ser limpo com água corrente ou soro fisiológico.\n"
                "2° Passo: Armazene imediatamento o dente em leite gelado (è a melhor forma de conversar os ligamentos periodontais do dente, são ligamentos invisíveis a olho nu, porém são os responsáveis por manter o dente no alveio). "
                "Outras ações de armazenamento são o soro fisiológico e a própria saliva da criança.\n"
                "3° Passo: Procure imediatamento um cirurgião dentista para ser feita a reimplantação do dente avulsionado.\n"
                "Por ate 60 minutos o dente pode ser reimplantado para que não haja perda permanente do dente.",
          ),
        ],
        assetsPath: "assets/toothache.png",
      ),
    ],
  )
];
