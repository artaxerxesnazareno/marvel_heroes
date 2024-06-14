## 🦸‍♂️ Novo Projeto em Flutter! 🚀

Estou animado para compartilhar meu mais recente projeto de prática deliberada! 🎉

📱 App Mobile com Flutter: Desenvolvi um aplicativo incrível utilizando o Flutter, que consome a API da Marvel! 🌟

### 🔍 Funcionalidades:

* Busca de personagens da Marvel 🦸‍♀️🦹‍♂
️
* Detalhes completos dos personagens 📚

* Interface intuitiva e responsiva 📲

### 💡 Tecnologias Utilizadas:

* Flutter para  mobile 📱

* API da Marvel para dados dos personagens 🔗

## Models
### Character

#### Atributos

- `id`: int
- `name`: String
- `description`: String
- `thumbnail`: Thumbnail
- `comics`: Comic

### Thumbnail

#### Atributos

- `path`: String
- `extension`: String

#### Metodos

- `getThumbnail(path, extension)`

### Comic
- `id`: int
- `title`: String
- `digitalId`: String
- `format`: String
- `paginas`: int
- `thumbnail`: Thumbnail