## Adding a new mirror:
You need to add the url of LXC_MIRROR like:      
```
LXC_MIRROR_NJU="https://mirror.nju.edu.cn/lxc-images"
```
And the way to format its webpage(format_html is for parrotOS only since [v1.3](https://github.com/Moe-hacker/rootfstool/commit/6bf5c939c446c16197a481ed535b86f56ff4fb18))      
```
function format_html() {

...

"nju")
    echo "$*" | grep "href" | grep "title" | sed -E 's@<a (href)@\n\1@g' | awk -F 'href=' '{print $2}' | cut -d '"' -f 2 | cut -d "/" -f 1 | grep -v '\.\.' | grep -v "&amp;" | grep -v "http"
    ;;

...
```
## Before pushing:
run `make format`