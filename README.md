# Proyecto Final: Diversidad genética del Tiburón Ballena (*Rhincodon typus*)

## Autores
- Freddy Omar Guaña Collaguazo  
- Contacto: [foguana@puce.edu.ec](mailto:foguana@puce.edu.ec)

## Propósito del programa
Este proyecto tiene como objetivo analizar la diversidad genética del tiburón ballena (*Rhincodon typus*), el pez más grande del mundo, mediante el uso de secuencias de ADN disponibles en bases de datos públicas. Se realizarán alineamientos múltiples y filogenias para estudiar posibles diferencias entre poblaciones de distintas regiones del mundo.

El proyecto busca aportar evidencia sobre la estructura genética poblacional de esta especie, clave para su conservación (Colman et al., 2022). La especie se encuentra actualmente en estado vulnerable según la IUCN.

![Tiburón ballena](https://static.nationalgeographic.es/files/styles/image_3200/public/whale-shark-swarm-01.webp?w=1450&h=963&q=100)

## Requisitos para ejecutar el programa

- [MUSCLE](https://www.drive5.com/muscle/downloads.htm) (alineamiento de secuencias)
- [IQ-TREE](https://github.com/iqtree/iqtree2/releases) (inferencia filogenética)
- [FigTree](https://github.com/rambaut/figtree/releases) (visualización de árboles)
- [Atom](https://atom.io/) (edición de archivos `.fasta` y `.tree`)
- [NCBI Datasets CLI](https://www.ncbi.nlm.nih.gov/datasets/docs/v2/download-and-install/) y Entrez Direct (`edirect`) para descarga de datos
- Git y GitHub para control de versiones

> Se recomienda usar un entorno compatible con línea de comandos como Git Bash (Windows) o terminal de Linux.

## Cómo usar el programa

1. Asegúrate de tener en la misma carpeta los ejecutables: `datasets`, `dataformat`, `muscle`, `iqtree2`.
2. Ejecuta el script:

FilogeniaTiburon.sh

## Puedes abrir los archivos generados con Atom:

atom aligned/gen1_aligned.fasta
atom aligned/gen1_aligned.fasta.treefile

## Para visualizar el árbol con FigTree:

java -jar Figtree_v*.jar aligned/gen1_aligned.fasta.treefile

## Archivos incluidos

FilogeniaTiburon.sh: script automatizado del análisis.

genes_zip/: contiene los archivos .zip descargados desde NCBI.

genes/: contiene las secuencias extraídas (.fna).

aligned/: contiene alineamientos y árboles generados por IQ-TREE.

trees/: carpeta vacía destinada a guardar árboles finales (opcional).

README.md: este documento.

## Referencias
Colman, L. P., et al. (2022). Population genetics of whale sharks. Marine Biology Journal, 168(3), 1–12.

Sequeira, A. M., et al. (2013). Whale shark movement patterns. Ecology and Evolution, 3(8), 2377–2390.








