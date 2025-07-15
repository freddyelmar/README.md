# Proyecto Final: Diversidad genética de peces amazónicos

## Autores
- Freddy Omar Guaña Collaguazo  
- Contacto: [foguana@puce.edu.ec](mailto:foguana@puce.edu.ec)

## Propósito del programa  
Este proyecto tiene como objetivo analizar la diversidad genética de peces amazónicos representativos (*Arapaima gigas*, *Pygocentrus nattereri*, *Potamotrygon motoro* y *Corydoras aeneus*) mediante el uso de secuencias mitocondriales completas disponibles en bases de datos públicas. Se realizarán alineamientos múltiples y filogenias para estudiar las relaciones evolutivas entre estas especies.

El proyecto busca aportar evidencia sobre la diversidad genética y la filogenia de estos peces, importante para su conservación con datos de la IUCN y estudio evolutivo (Santos et al., 2020).

## Galería de especies analizadas

<p float="left">
  <img src="https://inaturalist-open-data.s3.amazonaws.com/photos/131497430/medium.jpg"" alt="Arapaima gigas" width="200"/>
  <img src="https://inaturalist-open-data.s3.amazonaws.com/photos/84709831/medium.jpg" alt="Pygocentrus nattereri" width="200"/>
  <img src="https://inaturalist-open-data.s3.amazonaws.com/photos/84577677/medium.jpg" alt="Potamotrygon motoro" width="200"/>
  <img src="https://www.fishipedia.es/wp-content/uploads/2016/11/Corydoras-cf.-aeneus-South-Brazil-725x483.jpg" alt="Corydoras aeneus" width="200"/>
</p>



## Requisitos para ejecutar el programa

- [MUSCLE](https://www.drive5.com/muscle/downloads.htm) (alineamiento de secuencias)  
- [IQ-TREE](https://github.com/iqtree/iqtree2/releases) (inferencia filogenética)  
- [FigTree](https://github.com/rambaut/figtree/releases) (visualización de árboles)  
- [Atom](https://atom.io/) (edición de archivos `.fasta` y `.tree`)  
- [NCBI Entrez Direct (edirect)](https://www.ncbi.nlm.nih.gov/books/NBK179288/) para descarga de datos  
- Git y GitHub para control de versiones  

> Se recomienda usar un entorno compatible con línea de comandos como Git Bash (Windows) o terminal Linux, o un servidor como Hoffman.

## Cómo usar el programa

1. Asegúrate de tener en la misma carpeta los ejecutables: `muscle`, `iqtree2`, `esearch`, `efetch`.  
2. Ejecuta el script:

**FilogeniaPecesAmazonicos.sh**

## Puedes abrir los archivos generados con Atom:

- `results/alineadas.fasta`  
- `results/arbol_peces.treefile`

## Para visualizar el árbol con FigTree:

`java -jar Figtree_v*.jar results/arbol_peces.treefile`

## Archivos incluidos

- FilogeniaPecesAmazonicos.sh: script automatizado del análisis  
- data/: contiene el archivo secuencias.fasta con las secuencias mitocondriales completas  
- results/: contiene los resultados del alineamiento y árbol filogenético  
- scripts/: contiene el script que ejecuta el análisis  
- README.md: este documento

## Conclusiones

El árbol filogenético obtenido a partir del gen mitocondrial *COX1* permitió observar las relaciones evolutivas entre peces amazónicos representativos (*Arapaima gigas*, *Pygocentrus nattereri*, *Potamotrygon motoro* y *Corydoras aeneus*), junto a un grupo externo (*Ambystoma mexicanum*), lo cual aporta una visión comparativa dentro del clado.

Se evidenció que, a pesar de su importancia ecológica y cultural, muchas especies amazónicas aún carecen de evaluaciones actualizadas en bases globales como la Lista Roja de la IUCN. Por ejemplo, *Pygocentrus nattereri* no cuenta con un estado claro, y otras como *Arapaima gigas* presentan clasificación como “Datos insuficientes” en varias regiones (Castello et al., 2011; IUCN, 2023).

Este proyecto busca incentivar el uso de herramientas bioinformáticas y la investigación genética para mejorar el conocimiento sobre peces amazónicos. Aportar datos de secuencias y relaciones filogenéticas puede fortalecer estrategias de conservación en uno de los ecosistemas más biodiversos y amenazados del planeta (Winemiller et al., 2016).

## Referencias

- Santos, I. C., et al. (2020). Mitochondrial genome analysis reveals phylogenetic relationships among Neotropical freshwater fishes. *Molecular Phylogenetics and Evolution*, 148, 106819.  
- Colman, L. P., et al. (2022). Population genetics of whale sharks. *Marine Biology Journal*, 168(3), 1–12.  
- Sequeira, A. M., et al. (2013). Whale shark movement patterns. *Ecology and Evolution*, 3(8), 2377–2390.
- IUCN (2023). *The IUCN Red List of Threatened Species*. Disponible en: https://www.iucnredlist.org
- Castello, L., Viana, J. P., Watkins, G., Pinedo-Vasquez, M., & Luzadis, V. A. (2011). Sustainable management of arapaima (*Arapaima gigas*) in the Amazon. *Journal of Applied Ichthyology*, 27(4), 14–21. https://doi.org/10.1111/j.1439-0426.2011.01754.x
- Winemiller, K. O., McIntyre, P. B., Castello, L., et al. (2016). Balancing hydropower and biodiversity in the Amazon, Congo, and Mekong. *Science*, 351(6269), 128–129. https://doi.org/10.11/10.1126/science.aac7082






