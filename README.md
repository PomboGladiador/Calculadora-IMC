Calculadora de IMC em Flutter
Uma aplicação móvel desenvolvida em Flutter para calcular o Índice de Massa Corporal (IMC) dos usuários, armazenando histórico de cálculos e apresentando os resultados de forma intuitiva.

📱 Demonstração
Inclua aqui capturas de tela ou GIFs mostrando as principais telas e funcionalidades do aplicativo.

📖 Descrição
A Calculadora de IMC permite que os usuários insiram seu nome, peso e altura para calcular seu IMC de forma rápida e precisa. Além disso, o aplicativo armazena os últimos 5 cálculos realizados, permitindo que o usuário acompanhe seu histórico e progresso ao longo do tempo.

🛠️ Funcionalidades
Cálculo do IMC: Insira seu peso e altura para obter instantaneamente o seu IMC.

Armazenamento de Dados: Os últimos 5 cálculos são armazenados localmente, incluindo data e hora.

Histórico Personalizado: Exibe nome, peso, altura, IMC e data de cada cálculo.

Interface Intuitiva: Design simples e amigável, facilitando a interação do usuário.

Validações: Campos de entrada com validação para garantir dados precisos.

⚙️ Pré-requisitos
Antes de começar, certifique-se de ter as seguintes ferramentas instaladas:

Flutter SDK

Dart SDK

Android Studio ou Visual Studio Code com extensões Flutter e Dart

Emulador Android ou dispositivo físico para testes

Conhecimento básico de Flutter e Dart

🚀 Instalação
Siga os passos abaixo para configurar o projeto localmente:

Clone o Repositório

bash
git clone https://github.com/seu-usuario/calculadora_imc.git
Navegue até o Diretório do Projeto

bash
cd calculadora_imc
Instale as Dependências

bash
flutter pub get
Gere os Arquivos Necessários

Gere os adaptadores do Hive:

bash
flutter pub run build_runner build --delete-conflicting-outputs
Execute o Aplicativo

bash
flutter run
💻 Uso
Tela Inicial

Insira seu nome, peso (em kg) e altura (em metros).

Pressione o botão "Calcular IMC".

Resultado

Um diálogo aparecerá mostrando seu IMC calculado.

O cálculo será armazenado no histórico.

Histórico

Na tela principal, os últimos 5 cálculos aparecem listados.

Cada item mostra:

Nome

IMC

Peso e Altura

Data e Hora do cálculo

Novo Cálculo

Altere os valores e pressione "Calcular IMC" novamente para adicionar um novo registro.

🛠 Tecnologias Utilizadas
Flutter: Framework de desenvolvimento de aplicativos multiplataforma.

Dart: Linguagem de programação otimizada para aplicações cliente.

Hive: Banco de dados local rápido e leve para Flutter.

Intl: Pacote para internacionalização e formatação de datas.

👥 Contribuição
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests no GitHub.

Faça um fork do projeto.

Crie uma nova branch:

bash
git checkout -b feature/nova-funcionalidade
Faça suas modificações e commit:

bash
git commit -m 'Adiciona nova funcionalidade'
Envie para o repositório remoto:

bash
git push origin feature/nova-funcionalidade
Abra um Pull Request no GitHub.

📄 Licença
Este projeto está licenciado sob a Licença MIT - veja o arquivo LICENSE para detalhes.

📞 Contato
Seu Nome

Email: renatorosifini@gmail.com

LinkedIn: 

GitHub: https://github.com/PomboGladiador

⭐ Agradecimentos
Agradeço à comunidade Flutter pelos recursos e apoio.

Inspiração e referências da documentação oficial do Flutter e dos pacotes utilizados.

📝 Notas Adicionais
Compatibilidade: Testado em dispositivos Android versão 6.0 (Marshmallow) ou superior.

Atualizações Futuras:

Implementação de gráfico para acompanhamento do IMC ao longo do tempo.

Opção para exclusão individual de registros no histórico.

Suporte a múltiplos usuários ou perfis.

Instruções de Personalização
Sinta-se à vontade para personalizar o README conforme suas necessidades:

Imagens e GIFs: Adicione capturas de tela ou gravações de tela do aplicativo em funcionamento.

Links: Se o projeto estiver hospedado em um repositório público, ajuste os links do GitHub.

Contato: Atualize suas informações de contato.

Licença: Escolha a licença que melhor se adequa ao seu projeto.

Seções Adicionais: Adicione quaisquer seções que considere relevantes, como "FAQ" ou "Problemas Conhecidos".

Dicas para um README Eficaz
Clareza: Seja claro e conciso nas descrições.

Organização: Use cabeçalhos e listas para organizar o conteúdo.

Visual: Inclua imagens para tornar o README mais atraente.

Atualização: Mantenha o README atualizado conforme o projeto evolui.

Markdown: Aproveite as funcionalidades do Markdown para formatar o texto (negrito, itálico, links, etc.).

Como Criar o Arquivo README.md
Na Raiz do Projeto, crie um novo arquivo chamado README.md.

Copie o Conteúdo: Copie o modelo fornecido e cole no README.md.

Personalize o Conteúdo: Substitua as informações genéricas pelas específicas do seu projeto.

Salvar e Commitar:

bash
git add README.md
git commit -m 'Adiciona README ao projeto'
git push 
