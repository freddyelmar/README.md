#!/bin/bash
# Análisis filogenético del tiburón ballena (Rhincodon typus)
# Descarga del gen cytb, alineamiento con MUSCLE e inferencia filogenética con IQ-TREE

# Cargar módulos necesarios (versiones recomendadas)
module load muscle/3.8.31
module load iqtree/2.2.0
module load datasets/15.0.0

# Crear carpetas necesarias
mkdir -p genes_zip && echo "Carpeta 'genes_zip' creada o ya existente"
mkdir -p genes && echo "Carpeta 'genes' creada o ya existente"
mkdir -p aligned && echo "Carpeta 'aligned' creada o ya existente"
mkdir -p trees && echo "Carpeta 'trees' creada o ya existente"

# Descargar el gen cytb para Rhincodon typus
./datasets download gene symbol cytb --taxon "Rhincodon typus" --filename genes_zip/cytb_Rhincodon.zip

# Extraer archivo .fna y moverlo a carpeta genes
unzip genes_zip/cytb_Rhincodon.zip
mv ncbi_dataset/data/*/rna.fna genes/gen1.fna
echo "Archivo gen1.fna guardado en carpeta 'genes'"

# Alineamiento con MUSCLE
muscle -in genes/gen1.fna -out aligned/gen1_aligned.fasta
echo "Alineamiento guardado en 'aligned/gen1_aligned.fasta'"

# Inferencia filogenética con IQ-TREE
cd aligned
iqtree2 -s gen1_aligned.fasta
cd ..

# Mensajes de finalización
echo "Análisis filogenético completado."
echo "Archivos generados:"
echo "- Alineamiento: aligned/gen1_aligned.fasta"
echo "- Árbol filogenético: aligned/gen1_aligned.fasta.treefile"
echo "Puedes visualizar y editar los archivos con las siguientes aplicaciones:"
echo "- Para visualizar el árbol filogenético: FigTree (https://github.com/rambaut/figtree)"
echo "- Para editar archivos fasta o treefile: Editor de texto Atom (https://atom.io)"



