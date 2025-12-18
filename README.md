# medmonitor-architecture
Архітектурний репозиторій для системи моніторингу пацієнтів

## Структура

### Документація
- `01-overview/` - Огляд
- `02-architecture/` - Архітектура
- `03-specifications/` - Специфікації
- `04-standards/` - Стандарти
- `05-operations/` - Операції

### Діаграми
- `c4/` - C4 діаграми
- `uml/` - UML діаграми
mv diagrams/um1 diagrams/uml

mkdir -p docs/02-architecture/C4-model
mkdir -p docs/02-architecture/UML-diagrams
mkdir -p docs/02-architecture/adr

mkdir -p docs/03-specifications/api-spec
mkdir -p docs/03-specifications/data-models
mkdir -p docs/03-specifications/quality-attributes

echo "# C4 Model Diagrams" > docs/02-architecture/C4-model/README.md
echo "# UML Diagrams" > docs/02-architecture/UML-diagrams/README.md
echo "# Architecture Decision Records" > docs/02-architecture/adr/README.md

echo "# API Specifications" > docs/03-specifications/api-spec/README.md
echo "# Data Models" > docs/03-specifications/data-models/README.md
echo "# Quality Attributes" > docs/03-specifications/quality-attributes/README.md

for dir in docs/*/; do
  if [ ! -f "$dir/README.md" ]; then
    echo "# $(basename $dir)" > "$dir/README.md"
  fi
done

cat > docs/02-architecture/adr/template.md << 'EOF'
# ADR 000: [Короткий опис]

## Статус
[Прийнято | Запропоновано | Застаріло]

## Контекст
[Опис проблеми]

## Розглянуті варіанти
1. [Варіант 1]
2. [Варіант 2]
3. [Варіант 3]

## Рішення
[Обраний варіант]

## Обґрунтування
[Чому обрано цей варіант]

## Наслідки
### Позитивні
- [Наслідок 1]
- [Наслідок 2]

### Негативні
- [Наслідок 1]
- [Наслідок 2]

## Пов'язані рішення
- [Посилання]

## Структура

### Документація
- `01-overview/` - Огляд
- `02-architecture/` - Архітектура
- `03-specifications/` - Специфікації
- `04-standards/` - Стандарти
- `05-operations/` - Операції

### Діаграми
- `c4/` - C4 діаграми
- `uml/` - UML діаграми
- `sequence/` - Sequence діаграми
