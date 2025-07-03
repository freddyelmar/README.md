#!/bin/bash
# Proyecto: Filogenia de peces amazónicos

# Cargar módulos (en Hoffman)
module load muscle/3.8.31_i86linux64
module load iqtree/2.2.2.6
module load edirect

# Crear carpetas necesarias
mkdir -p Data Results

echo "📥 Descargando genomas mitocondriales desde GenBank..."

esearch -db nucleotide -query "Arapaima gigas[Organism] AND mitochondrion[Title] AND complete genome" | efetch -format fasta > Data/arapaima.fasta
esearch -db nucleotide -query "Pygocentrus nattereri[Organism] AND mitochondrion[Title] AND complete genome" | efetch -format fasta > Data/piraña.fasta
esearch -db nucleotide -query "Potamotrygon motoro[Organism] AND mitochondrion[Title] AND complete genome" | efetch -format fasta > Data/raya.fasta
esearch -db nucleotide -query "Corydoras aeneus[Organism] AND mitochondrion[Title] AND complete genome" | efetch -format fasta > Data/corydoras.fasta

echo "🧬 Concatenando secuencias..."
cat Data/*.fasta > Data/secuencias.fasta

echo "📐 Alineando con MUSCLE..."
muscle -in Data/secuencias.fasta -out Results/alineadas.fasta

echo "🌳 Construyendo árbol con IQ-TREE..."
iqtree -s Results/alineadas.fasta -m MFP -bb 1000 -alrt 1000 -nt AUTO -pre Results/arbol_peces

# Mensajes de finalización
echo "Puedes visualizar y editar los archivos con las siguientes aplicaciones:"
echo "- Para visualizar el árbol filogenético: FigTree (https://github.com/rambaut/figtree)"
echo "- Para editar archivos fasta o treefile: Editor de texto Atom (https://atom.io)"
echo "Verifica los resultados en la carpeta Results/"


