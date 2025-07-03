# Proyecto Final: Diversidad genética de peces amazónicos

## Autores
- Freddy Omar Guaña Collaguazo  
- Contacto: [foguana@puce.edu.ec](mailto:foguana@puce.edu.ec)

## Propósito del programa  
Este proyecto tiene como objetivo analizar la diversidad genética de peces amazónicos representativos (Arapaima gigas, Pygocentrus nattereri, Potamotrygon motoro y Corydoras aeneus) mediante el uso de secuencias mitocondriales completas disponibles en bases de datos públicas. Se realizarán alineamientos múltiples y filogenias para estudiar las relaciones evolutivas entre estas especies.

El proyecto busca aportar evidencia sobre la diversidad genética y la filogenia de estos peces, importante para su conservación y estudio evolutivo.

![Peces amazónicos](https://upload.wikimedia.org/wikipedia/commons/2/25/Arapaima_Gigas_01.jpg)

## Requisitos para ejecutar el programa

- [MUSCLE](https://www.drive5.com/muscle/downloads.htm) (alineamiento de secuencias)  
- [IQ-TREE](https://github.com/iqtree/iqtree2/releases) (inferencia filogenética)  
- [FigTree](https://github.com/rambaut/figtree/releases) (visualización de árboles)  
- [Atom](https://atom.io/) (edición de archivos `.fasta` y `.tree`)  
- [NCBI Entrez Direct (edirect)](https://www.ncbi.nlm.nih.gov/books/NBK179288/) para descarga de datos  
- Git y GitHub para control de versiones  

> Se recomienda usar un entorno compatible con línea de comandos como Git Bash (Windows) o terminal Linux.

## Cómo usar el programa

1. Asegúrate de tener en la misma carpeta los ejecutables: `muscle`, `iqtree2`, `esearch`, `efetch`.  
2. Ejecuta el script:

```bash
FilogeniaPecesAmazonicos.sh

# Puedes abrir los archivos generados con Atom:
atom results/alineadas.fasta
atom results/arbol_peces.treefile

# Para visualizar el árbol con FigTree:
java -jar Figtree_v*.jar results/arbol_peces.treefile

# Archivos incluidos
FilogeniaPecesAmazonicos.sh: script automatizado del análisis.

data/: contiene el archivo secuencias.fasta con las secuencias mitocondriales completas.

results/: contiene los resultados del alineamiento y árbol filogenético.

scripts/: contiene el script que ejecuta el análisis.

README.md: este documento.

# Referencias
Colman, L. P., et al. (2022). Population genetics of whale sharks. Marine Biology Journal, 168(3), 1–12.

Sequeira, A. M., et al. (2013). Whale shark movement patterns. Ecology and Evolution, 3(8), 2377–2390.







