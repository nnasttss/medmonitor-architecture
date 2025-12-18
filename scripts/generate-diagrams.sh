#!/bin/bash

# Generate diagrams from PlantUML files
echo "Generating architecture diagrams..."

# Check if PlantUML is installed
if ! command -v plantuml &> /dev/null; then
    echo "Error: PlantUML is not installed"
    echo "Install with: brew install plantuml (macOS) or download from plantuml.com"
    exit 1
fi

# Generate C4 diagrams
echo "Generating C4 diagrams..."
plantuml diagrams/c4/*.puml -o ../docs/02-architecture/C4-model/

# Generate UML diagrams
echo "Generating UML diagrams..."
plantuml diagrams/uml/*.puml -o ../docs/02-architecture/UML-diagrams/

# Generate sequence diagrams
echo "Generating sequence diagrams..."
plantuml diagrams/sequence/*.puml -o ../docs/02-architecture/UML-diagrams/

echo "Diagrams generated successfully!"
echo "Output saved to docs/02-architecture/"
