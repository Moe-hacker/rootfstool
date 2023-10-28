## Adding a new mirror:
For example, add the NJU mirror:      
You need to add the url of LXC_MIRROR like:      
```
...

LXC_MIRROR_NJU="https://mirror.nju.edu.cn/lxc-images"

...

function select_mirror() {

...

"nju")
    export LXC_MIRROR=${LXC_MIRROR_NJU}
    ;;

...

function list_mirrors() {

...

echo nju

...
```
As you can see, it is very easy.      
~~(Maybe I should do it myself...)~~      
## Before pushing:
run `make format`