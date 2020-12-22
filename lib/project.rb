class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_array = ProjectBacker.all.select do |project|
            project.project == self
        end

        project_array.collect do |project|
            project.backer
        end

    end
end