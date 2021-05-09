class Hash
  def deep_stringify_all_keys
    stringified_hash = {}
    each do |k, v|
        stringified_hash[k.to_s] = v
        if v.class == Hash
          stringified_hash[k.to_s].deep_stringify_all_keys
        end
    end
    stringified_hash
  end

  def deep_symbolify_all_keys
    symbolified_hash = {}
    each do |k, v|
      symbolified_hash[k.to_sym] = v
        if v.class == Hash
          symbolified_hash[k.to_sym].deep_symbolify_all_keys
        end
    end
    symbolified_hash
  end 
end