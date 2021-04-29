class Backer

    attr_reader :name 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)    
    end

    def backed_projects
        all_projects = ProjectBacker.all.select do |project_instance|
            project_instance.backer == self
        end

        all_projects.map do |backed_project|
            backed_project.project
        end
    end

end