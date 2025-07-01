# AppDistanceCalc 📍📏

Bem-vindo ao **AppDistanceCalc**!  
Este repositório foi criado para facilitar cálculos de distância em aplicações iOS, utilizando como base a poderosa biblioteca **CoreLocation** da Apple.

> **ℹ️ Este projeto foi baseado na biblioteca [@JaoVicy/distance-calc-python](https://github.com/JaoVicy/distance-calc-python), desenvolvida originalmente em Python e que utilizava a biblioteca principal [Geopy](https://geopy.readthedocs.io/) para os cálculos de distância.**

---

## 🚀 Sobre o Projeto

O **AppDistanceCalc** tem como objetivo fornecer funcionalidades prontas para calcular distâncias entre coordenadas geográficas de forma fácil, precisa e eficiente.  
Ideal para apps que precisam de localização, rastreamento, rotas ou qualquer funcionalidade que envolva distância geográfica.

---

## 🧰 Principais Bibliotecas Utilizadas

- **CoreLocation**: Biblioteca principal responsável por fornecer APIs robustas para localização, cálculo de distância, geocodificação reversa e muito mais.
- **Foundation**: Serve como a "caixa de ferramentas" básica para qualquer app Apple.

---

## ✨ Funcionalidades

- Cálculo de distância entre dois pontos geográficos (latitude/longitude)
- Suporte a diferentes unidades de medida (metros, quilômetros)
- Fácil integração com outros módulos de localização
- Código limpo e bem documentado

---

## 🛠️ Como Usar

1. Adicione o projeto ao seu workspace ou copie os arquivos necessários.
2. Importe o CoreLocation no seu arquivo Swift:
   ```swift
   import CoreLocation
   ```
3. Utilize as funções disponíveis para calcular distâncias:
   ```swift
   let distancia = location1.distance(from: location2)
   ```

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
