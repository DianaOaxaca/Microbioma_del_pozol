library(DiagrammeR)

# Diagrama de flujo de CheckM en español con programas utilizados y colores pastel
grViz("
digraph checkm_workflow {

  # Define nodos con colores pastel
  node [shape=box, style=filled, fontname=Arial, fontsize=12]

  A [label='01. checkm tree\npplacer\nInput: Genomas en formato FASTA\nOutput: Árbol filogenético', color='#FFB3BA']    # Pastel pink
  B [label='02. checkm tree_qa (Opcional)\npplacer\nInput: Árbol filogenético\nOutput: Evaluación de genes marcadores', color='#FFDFBA']  # Pastel orange
  C [label='03. checkm lineage_set\nHMMER\nInput: Árbol filogenético\nOutput: Archivo de marcadores específicos de linaje', color='#FFFFBA'] # Pastel yellow
  D [label='04. checkm analyze\npplacer, HMMER\nInput: Archivo de marcadores, Genomas\nOutput: Evaluación de completitud y contaminación', color='#BAFFC9'] # Pastel green
  E [label='05. checkm qa\nNumpy, Scipy\nInput: Archivo de marcadores, Evaluación\nOutput: Resumen de calidad de genomas', color='#BAE1FF']  # Pastel blue
  F [label='checkM lineage_wf (Flujo completo)\npplacer, HMMER, Numpy, Scipy\nInput: Genomas en formato FASTA\nOutput: Evaluación de calidad de genomas', color='#D7BAFF'] # Pastel purple

  # Define conexiones
  A -> B [label=' (Opcional) ']
  A -> C
  C -> D
  D -> E
  F -> A [style=dashed]
}

")
