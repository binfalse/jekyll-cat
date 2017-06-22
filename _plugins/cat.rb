module Jekyll
  class CatFile < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @file = text.strip;
    end

    def render(context)
      if File.exists?(@file)
        content = File.read(@file)
      else
        raise "[cat] File #{@file} not found"
      end
      content
    end
  end
end

Liquid::Template.register_tag('cat', Jekyll::CatFile)

