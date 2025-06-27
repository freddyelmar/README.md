#!/bin/bash
# Análisis filogenético del tiburón ballena (Rhincodon typus)
# Descarga del gen cytb, alineamiento con MUSCLE e inferencia filogenética con IQ-TREE

# Cargar herramientas (en servidores con módulos)
module load muscle
module load iqtree
module load datasets

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
echo "Árbol generado en 'aligned/gen1_aligned.fasta.treefile'"

# Abrir archivos generados con Atom (opcional)
echo "Puedes abrir los archivos con Atom:"
echo "atom aligned/gen1_aligned.fasta"
echo "atom aligned/gen1_aligned.fasta.treefile"

# Final
echo "Análisis completo. Visualiza el árbol con FigTree o edítalo con Atom."



