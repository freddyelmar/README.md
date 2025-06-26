#!/bin/bash
# 🔬 Análisis filogenético de genes del tiburón ballena (Rhincodon typus)
# 🛠️ Incluye instalación de herramientas, alineamiento con MUSCLE, filogenia con IQ-TREE y visualización en FigTree

# ======================
# 📦 INSTALACIÓN DE HERRAMIENTAS
# ======================

# Instalar NCBI Datasets y Dataformat (si no lo tienes)
python3 -m pip install --upgrade pip
python3 -m pip install ncbi-datasets-pylib

# Instalar Entrez Direct
cd ~
git clone https://github.com/ncbi/edirect.git
cd edirect
sh install-edirect.sh
export PATH=$PATH:$HOME/edirect

# Descargar MUSCLE
mkdir -p ~/PROGRAMS
cd ~/PROGRAMS
wget https://www.drive5.com/muscle/downloads3.8.31/muscle3.8.31_i86linux64
chmod +x muscle3.8.31_i86linux64

# Instalar IQ-TREE (en caso de que no esté)
sudo apt install iqtree

# Instalar FigTree (descargar JAR manualmente)
# https://github.com/rambaut/figtree/releases
# Luego ábrelo con:
# java -jar Figtree_v*.jar

# ======================
# 🧬 DESCARGA Y PREPARACIÓN DE GENES
# ======================

# Crear carpetas de trabajo
mkdir -p genes_zip genes aligned trees

# Obtener todos los genes disponibles para Rhincodon typus
./datasets summary gene taxon "Rhincodon typus" --as-json-lines \
  | ./dataformat tsv gene --fields tax-name,gene-id,symbol \
  > genes_Rhincodon.tsv

# Filtrar el gen cytb como ejemplo
grep -i cytb genes_Rhincodon.tsv > genes/cytb_Rhincodon.tsv

# Descargar el gen cytb si está disponible
./datasets download gene symbol cytb --taxon "Rhincodon typus" --filename cytb_Rhincodon.zip

# Extraer archivo .fna (ajustar si cambia)
unzip cytb_Rhincodon.zip
mv ncbi_dataset/data/*/rna.fna genes/gen1.fna

# ======================
# 🧬 ALINEAMIENTO CON MUSCLE
# ======================

cd genes
cp ~/PROGRAMS/muscle3.8.31_i86linux64 ./

# Alinear con MUSCLE
for gene in *.fna; do
  ./muscle3.8.31_i86linux64 -in "$gene" -out "../aligned/muscle_${gene%.fna}.fasta" -maxiters 1 -diags
done
cd ..

# ======================
# 🌳 FILOGENIA CON IQ-TREE
# ======================

cd aligned
for aln in muscle_*.fasta; do
  iqtree2 -s "$aln"
done
cd ..

# ======================
# 👁️ VISUALIZACIÓN EN FIGTREE
# ======================

echo "✅ Abre los archivos .treefile generados con IQ-TREE en FigTree:"
echo "→ Ejemplo: aligned/muscle_gen1.fasta.treefile"
echo "Para abrir: java -jar Figtree_v*.jar"

