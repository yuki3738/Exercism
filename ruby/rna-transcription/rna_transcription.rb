class Complement
  def self.of_dna(strands)
    dna = 'CTAG'
    rna = 'CGAU'

    strands.tr(dna, rna)
  end
end
