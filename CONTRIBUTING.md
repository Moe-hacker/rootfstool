## Adding a new mirror:
For example, add the NJU mirror:      
You need to add the url of LXC_MIRROR and PARROTOS_MIRROR like:      
```
...

LXC_MIRROR_NJU="https://mirror.nju.edu.cn/lxc-images"

...

PARROTOS_MIRROR_NJU="https://mirror.nju.edu.cn/parrot/iso"

...

function select_mirror() {

...

"nju")
    export LXC_MIRROR=${LXC_MIRROR_NJU}
    export PARROTOS_MIRROR=${PARROTOS_MIRROR_NJU}
    ;;

...

function list_mirrors() {

...

echo nju

...
```
And the way to format its webpage(format_html is for ParrotOS only since [v1.3](https://github.com/Moe-hacker/rootfstool/commit/6bf5c939c446c16197a481ed535b86f56ff4fb18))      
```
function format_html() {

...

"nju")
    echo "$*" | grep "href" | grep "title" | sed -E 's@<a (href)@\n\1@g' | awk -F 'href=' '{print $2}' | cut -d '"' -f 2 | cut -d "/" -f 1 | grep -v '\.\.' | grep -v "&amp;" | grep -v "http"
    ;;

...
```
As you can see, it is very easy.      
~~(Maybe I should do it myself...)~~      
## Before pushing:
run `make format`