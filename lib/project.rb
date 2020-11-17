class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       new_array = ProjectBacker.all.select {|i| i.project == self}
       new_array.map {|x| x.backer }

        
    end

end