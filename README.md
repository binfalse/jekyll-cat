# cat plugin for jekyll

This is a plugin for [jekyll](http://jekyllrb.com/) that just behaves like the [`cat` tool](https://en.wikipedia.org/wiki/Cat_%28Unix%29) that you know from Unix- and Linux-based systems.

It will output a specified file into the position from where it was called from.
Quite similar to the `include` command, but it is able to include files from directories other than `_include`.

## Usage

You just need to specify the file to "cat" into the document:

    {% cat file/to/include.ext %}

This will include the contents of the file `file/to/include.ext`.
The path to the file should start relatively from Jekyll's main directory.
This, for example, goes well for code-highlighting of complete source code files.
You can just include your source file like this:

    {% highlight php %}
    {% cat assets/scripts/tool.php %}
    {% endhighlight %}


## LICENSE

This stuff is licenced under the [Beerware license](https://en.wikipedia.org/wiki/Beerware).
Do whatever you want and have a beer with me if you like :)

    "THE BEER-WARE LICENSE" (Revision 42):
    As long as you retain this notice you can do whatever you want with this stuff.
    If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.


