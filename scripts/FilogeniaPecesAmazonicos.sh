#!/bin/bash
# Proyecto: Filogenia de peces amazónicos

# Cargar herramientas necesarias
module load iqtree/2.2.2.6

# Crear carpetas necesarias
mkdir -p data2 results2

echo "Descargando gen COX1 desde GenBank..."
esearch -db nucleotide -query "Arapaima gigas[Organism] AND COX1[Gene]" | efetch -format fasta | head -100 > data2/arapaima.fasta
esearch -db nucleotide -query "Pygocentrus nattereri[Organism] AND COX1[Gene]" | efetch -format fasta | head -100 > data2/piranha.fasta
esearch -db nucleotide -query "Potamotrygon motoro[Organism] AND COX1[Gene]" | efetch -format fasta | head -100 > data2/raya.fasta
esearch -db nucleotide -query "Corydoras aeneus[Organism] AND COX1[Gene]" | efetch -format fasta | head -100 > data2/corydoras.fasta

# Grupo externo (outgroup)
esearch -db nucleotide -query "Ambystoma mexicanum[Organism] AND COX1[Gene]" | efetch -format fasta | head -100 > data2/outgroup.fasta

echo "Concatenando secuencias..."
cat data2/*.fasta > data2/secuencias.fasta

echo "Verificando secuencias descargadas..."
seq_count=$(grep -c "^>" data2/secuencias.fasta)
echo "Total de secuencias: $seq_count"

if [ $seq_count -eq 0 ]; then
    echo "Error: No se descargaron secuencias"
    exit 1
fi

echo "Alineando secuencias con MUSCLE..."
SCRIPTS/muscle3.8.31_i86linux64 -in data2/secuencias.fasta -out results2/alineadas_original.fasta

echo "Editando encabezados con nombres cortos (codigo, género y especie)..."
perl -pe 's/(>\w+\.1)\s(\w+)\s(\w+).*/$1_$2_$3/' results2/alineadas_original.fasta > results2/alineadosatom.fasta

echo "Construyendo árbol filogenético con IQ-TREE..."
iqtree -s results2/alineadosatom.fasta -m MFP -nt AUTO -pre results2/arbol_peces

echo "¡Análisis completo! Revisa los resultados en la carpeta 'results2/'"
echo "Archivos importantes:"
echo "  - results2/arbol_peces.treefile (archivo del árbol)"
echo "  - results2/arbol_peces.iqtree (estadísticas del análisis)"
echo "Investigar en UICN la vulnerabilidad de cada especie y editar en hoffman con [vulnerabilidad]"



