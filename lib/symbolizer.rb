module DotNetSolutions
  class Symbolizer
    def self.convert(hash)
      hash.inject({}){|agg,(k,v)| agg[k.to_sym] = v; agg}
    end
  end
end
