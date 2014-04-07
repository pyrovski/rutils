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

rowApply = function(object, f_apply, ...)
  return(lapply(1:nrow(object), function(row) f_apply(object[row,], ...)))

mcrowApply = function(object, f_apply, ...)
  return(mclapply(1:nrow(object), function(row) f_apply(object[row,], ...)))

rowMapply = function(f_apply, object, ...)
  rbindlist(mapply(f_apply, lapply(1:nrow(object), function(row) object[row,]), ...,
                   SIMPLIFY=F))

toKey = function(x) {
    x = as.list(x)
    return(paste(sapply(x[sort(names(x))], as.character),collapse='.'))
}
