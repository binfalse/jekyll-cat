# CAT for Jekyll

This is a plugin for [jekyll](http://jekyllrb.com/) that just behaves like the [`cat` tool](https://en.wikipedia.org/wiki/Cat_%28Unix%29), as know from Unix- and Linux-based systems.

It will output a specified file into the position from where it was called.
Quite similar to the `include` command, but CAT is able to include files from directories other than `_include`.


## Usage

You just need to specify the file to "cat" into the document:

    {% cat file/to/include.ext %}

This will include the contents of the file `file/to/include.ext`.
The path to the file should start relative to Jekyll's main directory.
This, for example, goes well for code-highlighting of complete source code files.
You can just include your source file like this:

    {% highlight php %}
    {% cat assets/scripts/tool.php %}
    {% endhighlight %}


## Installation

Basically, all you need to do is putting the [file `_plugins/cat.rb`](_plugins/cat.rb) into the `_plugins` directory of your jekyll site.
For example, using wget from the root of your Jekyll website:

    wget -O _plugins/cat.rb https://raw.githubusercontent.com/binfalse/jekyll-cat/master/_plugins/cat.rb

### As a Git submodule

You can of course also add this repository as a submodule to you're website if you're using git anyways:

    git submodule add https://github.com/binfalse/jekyll-cat _plugins/cat

This way it's easy to stay up-to-date with changes and bug fixes.
However, don't forget to initialise the submodules when changing machines etc:

    git submodule update --init --recursive

## LICENSE

This extension is licenced under the [Beerware license](https://en.wikipedia.org/wiki/Beerware).
Do whatever you want and have a beer with me if you like :)

    "THE BEER-WARE LICENSE" (Revision 42):
    As long as you retain this notice you can do whatever you want with this stuff.
    If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.


