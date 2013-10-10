##! @todo seach workspace for environment references
##  that may trigger large save files
.object_sizes = function()
  sort(sapply(ls(all.names=T), function(x)object.size(get(x))))

adjWidth = function()
  options(width=system('tput cols', intern=T))
