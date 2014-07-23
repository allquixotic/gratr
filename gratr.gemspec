# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'gratr/version'

Gem::Specification.new do |s|
  #### Basic information.
  s.name = 'gratr19'
  s.version = GRATR::VERSION
  s.summary = "Graph Theory Ruby library"

  s.description = <<-EOF
GRATR is a framework for graph data structures and algorithms.

This library is a fork of RGL. This version utilizes
Ruby blocks and duck typing to greatly simplfy the code. It also supports
export to DOT format for display as graphics.

GRATR currently contains a core set of algorithm patterns:

 * Breadth First Search 
 * Depth First Search 
 * A* Search
 * Floyd-Warshall
 * Best First Search
 * Djikstra's Algorithm
 * Lexicographic Search

The algorithm patterns by themselves do not compute any meaningful quantities
over graphs, they are merely building blocks for constructing graph
algorithms. The graph algorithms in GRATR currently include:

 * Topological Sort 
 * Strongly Connected Components 
 * Transitive Closure
 * Rural Chinese Postman
 * Biconnected
EOF

  #### Which files are to be included in this gem?  Everything!
  #(Except CVS directories.)
  s.files = Dir[
  'install.rb',
  'README',
  'lib/**/*.rb',
  'tests/**/*.rb',
  'examples/**/*'].to_a

  #### Load-time details: library and application (you will need one or both).
  s.require_path = 'lib'                         # Use these for libraries.

  #### Documentation and testing.
  s.has_rdoc = true
  s.extra_rdoc_files = ['README']
  s.rdoc_options <<
  '--title' <<  'GRATR - Ruby Graph Library' <<
  '--main' << 'README' <<
  '--line-numbers'

  #### Author and project details.
  s.authors = ["Shawn Garbett","Ankur Sethi"]
  s.email = ["shawn@garbett.org", "ankursethi108@gmail.com"]
  s.homepage = "https://github.com/amalagaura/gratr"
  s.rubyforge_project = "gratr19"
end

