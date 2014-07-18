module DotNetSolutions
  class Symbolizer
    def self.convert(data)
      unless ['String','FixNum','NilClass','Symbol'].include? data.class.to_s
        if data.is_a? Array
          data.map!{ |item| convert item }
        else
          data = convert_hash data
        end
      end
      data
    end

    def self.convert_hash(hash)
      hash.inject({}){ |agg,(k,v)| agg[k.to_sym] = convert v unless k.is_a? Symbol; agg }
    end
  end
end
