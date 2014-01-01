require 'encoding_sampler'


sampler = EncodingSampler::Sampler.new(
      '../data-sample/utf-8.txt', 
      ['ASCII-8BIT', 'UTF-8', 'ISO-8859-1', 'ISO-8859-2', 'ISO-8859-15'])
    
valid = sampler.valid_encodings()
puts valid.to_s
puts sampler.unique_valid_encoding_groups().to_s
puts ""
puts sampler.samples(valid)