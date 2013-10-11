##! @todo seach workspace for environment references
##  that may trigger large save files
.object_sizes = function()
  sort(sapply(ls(all.names=T), function(x)object.size(get(x))))

adjWidth = function()
  options(width=system('tput cols', intern=T))

napply = function(l, f){
  result = lapply(names(l), function(name) f(l[[name]], name=name))
  names(result) = names(l)
  result
}

nnapply = function(n, f){
  result = lapply(n, f)
  names(result) = n
  result
}
