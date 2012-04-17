Jekyll plugins by Aucor
=======================

Collection of plugins for the Jekyll static site generator.


Overview
--------

Plugins included in this repository:

* **strip.rb** - Block tag for trimming away unwanted newlines and whitespace between them.


Usage
-----

### Strip.rb

Using eg. forloops to generate navigation produces often a huge amount of ugly whitespace. Wrapping the section with `{% strip %}{% endstrip %}` replaces the blocks of whitespace with one newline keeping the resulting in pretty markup.

Example:

<pre><code>{% strip %}<ul>

  <li>List item 1</li>
  
  
  
  
  <li>List item 2</li>
  
  <li>List item 3</li>
  
  
</ul>{% endstrip %}</code></pre>
  
becomes:

<pre><code><ul>
  <li>List item 1</li>
  <li>List item 2</li>
  <li>List item 3</li>
</ul></code></pre>


Author
------

Plugins written by Janne Ala-Äijälä of [Aucor Oy](http://www.aucor.fi)


Copyright
---------

Copyright (c) 2012 Aucor Oy. Released under MIT Licence (see LICENCE for details).