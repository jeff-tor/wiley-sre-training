#activity 0

class movies:
    name = None
    genre = None
    def __init__(self, gname, ggenre):
        self.name = name
        self.genre = genre
    def display(self):
        print("The name of the game is",self.name)
        print(self.name,"is in the genre",self.genre)

class videos(movies):


    platform = None
    players = None
    def __init__(self, name, genre, platform):
        movies.__init__(self, name, genre)
        self.platform = platform

    def display(self):
        games.display(self)
        print("This video is on the platform", self.platform)
