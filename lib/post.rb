class Post
    attr_accessor :author
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
        @author
    end

    def self.all
        @@all
    end
    
    def author_name
        @author != nil ? @author.name : nil
    end
end