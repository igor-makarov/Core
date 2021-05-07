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
end