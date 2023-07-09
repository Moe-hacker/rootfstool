<p align="center">「その木漏れ日でうたた寝したら</p>  
<p align="center">虫の死骸と土になれるかな」</p>  

--------
## WARNING:
This project is still under development   
## About:
Rootfstool is a tool to get linux container rootfs.       
It can get rootfs url from:
- Lxc-image mirror
- ParrotOS mirror
## Usage:
```
rootfstool <command> [<args>]

Commands:
  version,v    #Show version info
  help,h       #Show helps
  list,l       #List all distros from lxc-image mirror
  search,s     #Search available versions of distro
  url,u        #Get rootfs download link
  exec,e       #Exec a function *Only for developer

Args:
--distro,-d    #Specify os distro
--arch,-a      #Specify cpu architecture
--version,-v   #Specify distro version
--mirror,-m    #Specify the mirror, available mirrors are: main bfsu tuna

```
Some examples:   
List available arm64 OS distros
```
rootfstool list -a arm64 -m bfsu
```
Search available versions of Ubuntu arm64
```
rootfstool search -a arm64 -d ubuntu -m bfsu
```
Get rootfs download link of Ubuntu bionic arm64
```
rootfstool url -a arm64 -d ubuntu -v bionic -m bfsu
```
## Contributing:
See :      
**[<kbd> <br> Contributing <br> </kbd>](https://github.com/Moe-hacker/rootfstool/blob/main/CONTRIBUTING.md)**
## Thanks to:
[tmoe](https://github.com/2moe/tmoe)    
(TMOE, More Optional Environments.)      