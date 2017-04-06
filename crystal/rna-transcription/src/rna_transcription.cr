# Please implement your solution to rna-transcription in this file
module RnaComplement
  def self.of_dna(dna)
    dna.tr "GCTA", "CGAU"
  end
end
