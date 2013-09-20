require 'nokogiri'
require 'text/hyphen'
      
module Jekyll
  module HyphenateFilter
        
    def hyphenate(content)
      # Initialize Hyphen 
      # (you can change the language as you wish, we're from Finland ;)
      # note: english is en_us or en_uk not just en
      hh = Text::Hyphen.new(:language => 'fi', :left => 2, :right => 2)
      
      # Parse html with Nokogiri
      fragment = Nokogiri::HTML::DocumentFragment.parse(content)     
      
      # Grab the html as it is
      html = fragment.inner_html
      
      # Loop through every paragraph
      fragment.css('p').each do |p|
        h = p.content
        
        # Loop through every word
        p.content.split.each do |w|
          # Replace original word with a hyphenated one
          # unless it is the last word in a paragraph
          if w != p.content.split.last
            h = h.gsub(w, hh.visualize(w, '&shy;'))
          end
        end
        
        # Replace original paragraph with a hyphenated one
        html = html.gsub(p, h)
      end
      
      # Return hyphenated html
      html
      
    end
    
  end
end

Liquid::Template.register_filter(Jekyll::HyphenateFilter)
