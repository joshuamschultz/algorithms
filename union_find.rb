class UnionFind
    def initialize(n)
        @matrix = [[*1..n],[*1..n]]
        @points = @matrix[0]
        @ids = @matrix[1]
    end 

    def id_point(point)
        location = @points.index(point)
        id = @ids[location]
        id
    end

    def union(a, b)
        a_id = id_point(a)
        b_id = id_point(b)

        @matrix[1].map! { |id| id == b_id ? a_id : id }
    end 

    def connected?(a, b)   
        a_id = id_point(a)
        b_id = id_point(b)

        a_id == b_id
    end
end

