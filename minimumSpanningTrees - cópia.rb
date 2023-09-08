class Graph
    attr_reader :edges, :vertices

    def initialize(vertices)
        @vertices = vertices
        @edges = []
    end

    def add_edge(u,v,w)
        @edges << [u,v,w]
    end



    
