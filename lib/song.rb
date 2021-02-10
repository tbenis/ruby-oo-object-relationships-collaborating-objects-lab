class Song
    attr_accessor :artist, :name
    
    @@all = []
    # other methods
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
  
    def artist_name=(name)
      if (self.artist.nil?)
        self.artist = Artist.new(name)
      else
        self.artist.name = name
      end
    end
  end 
