def domain_name(url)
  uri = URI.parse(url)
  if(uri.host)
    return uri.host
  else
    return uri.to_s
  end
end
