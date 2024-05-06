import 'package:campo_minado/models/campo.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('Campo', () {
    test('Abrir Campo COM Explosão', () {
      // Arrange
      Campo c = Campo(linha: 0, coluna: 0);
      c.minar();

      // Act
      expect(c.abrir, throwsException);

      // Assert
    });

    test('Abrir Campo SEM Explosão', () {
      // Arrange
      Campo c = Campo(linha: 0, coluna: 0);

      // Act
      c.abrir();

      // Assert
      expect(c.aberto, isTrue);
    });

    test('Adicionar NÃO Vizinho', () {
      // Arrange
      Campo c1 = Campo(linha: 0, coluna: 0);
      Campo c2 = Campo(linha: 1, coluna: 3);

      // Act
      c1.adicionarVizinho(c2);

      // Assert
      expect(c1.vizinhos.isEmpty, isTrue);
    });

    test('Adicionar Vizinho', () {
      // Arrange
      Campo c1 = Campo(linha: 0, coluna: 0);
      Campo c2 = Campo(linha: 1, coluna: 1);

      // Act
      c1.adicionarVizinho(c2);

      // Assert
      expect(c1.vizinhos.contains(c2), isTrue);
    });
  });
}
