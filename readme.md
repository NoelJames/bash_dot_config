This is a collection of bash settings and configurations I prefer

`~/bash_profile` 

1. Set `INTERACTIVE=1` mode
2. loads `.bashrc`
3. If configured starts `screen`
4. Set titles for ssh client tabs/windows


`.bashrc`

1. config section
2. sources `/etc/profile` 
3. ensure `colours` are sourced
4. load default, OS or host specific settings


`.bash.d/`default settings

1. `default.behaviours`: shell options, history config, aliases and exports (ie: paths) 
2. `default.functions`: various bash functions which save me time
3. `default.complete`: some command line completion configs


Load OS specific script for example `Darwin.behavours`, `cygwin.functions`.
Or, host specific scripts `sunrool.local.functions`, `my_host.domain.behaviours`
 
I usually use screen so, included some reasonable screen defaults in `.screenrc`     


 

