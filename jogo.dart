import 'dart:io';
import 'dart:math';

void main() {
  // Gerar um número aleatório entre 1 e 100
  Random random = new Random();
  int numeroAleatorio = random.nextInt(100) + 1;
  int tentativas = 0;
  int maxTentativas = 10;
  bool acertou = false;

  print('Bem-vindo ao Jogo da Adivinhação!');
  print('Tente adivinhar o número entre 1 e 100.');

  // Loop para permitir várias tentativas
  while (tentativas < maxTentativas) {
    stdout.write('Tentativa ${tentativas + 1}: Digite um número: ');
    String entrada = stdin.readLineSync()!;
    int? numeroDigitado = int.tryParse(entrada);

    if (numeroDigitado != null) {
      if (numeroDigitado == numeroAleatorio) {
        acertou = true;
        break; // Encerra o loop se o jogador acertar
      } else if (numeroDigitado < numeroAleatorio) {
        print('Tente um número maior.');
      } else {
        print('Tente um número menor.');
      }
    } else {
      print('Por favor, digite um número válido.');
    }

    tentativas++;
  }

  // Verifica se o jogador acertou ou excede o número máximo de tentativas
  if (acertou) {
    print('Parabéns! Você acertou o número $numeroAleatorio!');
    print('Você conseguiu em $tentativas tentativas.');
  } else {
    print('Você excedeu o número máximo de tentativas.');
    print('O número correto era $numeroAleatorio.');
  }
}
