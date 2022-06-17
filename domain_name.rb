def domain_name(url)
  uri = URI.parse(url)
  if(uri.host)
    return uri.host.split(".")[0]
  else
    return uri.to_s.split(".")[1]
  end
end
