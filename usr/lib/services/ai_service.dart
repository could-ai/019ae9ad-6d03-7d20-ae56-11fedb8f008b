import 'dart:async';

class AiService {
  // Symulacja odpowiedzi AI
  Future<String> getResponse(String query) async {
    // Symulujemy opóźnienie sieciowe
    await Future.delayed(const Duration(seconds: 1));
    
    // Prosta logika odpowiedzi na potrzeby demo
    if (query.toLowerCase().contains('cześć') || query.toLowerCase().contains('hej')) {
      return "Cześć! Jestem Twoim asystentem AI. W czym mogę Ci dzisiaj pomóc?";
    } else if (query.toLowerCase().contains('pogoda')) {
      return "Niestety nie mam dostępu do czujników pogodowych, ale w cyfrowym świecie zawsze świeci słońce!";
    } else if (query.toLowerCase().contains('zrób') || query.toLowerCase().contains('napisz')) {
      return "Chętnie pomogę Ci w tym zadaniu. Proszę podaj więcej szczegółów.";
    }
    
    return "To ciekawe! Jako AI wciąż się uczę. Powiedziałeś: \"$query\"";
  }
}
