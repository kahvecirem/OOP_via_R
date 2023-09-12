setClass(
  "DNAChain",
  representation(
    genes = "list"
  ),
  prototype(
    genes = list()
  )
)

add_gene <- function(dna_chain, gene) {
  dna_chain@genes <- c(dna_chain@genes, gene)
}

print.DNAChain <- function(dna_chain) {
  cat("DNA Chain:\n")
  for (gene in dna_chain@genes) {
    cat("Name:", gene@name, "\nSequence:", gene@sequence, "\n")
  }
}

# Usage example
dna_chain <- new("DNAChain")
gene2 <- Gene("Gene B", "TAGCTAG")
add_gene(dna_chain, gene1)
add_gene(dna_chain, gene2)
print(dna_chain)
