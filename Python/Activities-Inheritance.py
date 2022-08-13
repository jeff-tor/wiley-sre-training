#activity 0

class movies:
name = None
genre = None
    def __init__(self, gname, genre):
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


class tiktok_videos(movies):

platform = None
viewers = None
availability = None
    def __init__(self, name, genre, availability)
        self.name = name
        self.genre = genre
        self.availability = availability

    def display(self):
        movies.display(self)
        print("This video is restricted for friends only")
        if self.availability:
            print("This video is private")
        else:
            print("This video is for public viewing")

#activity 4

TheBigMan = movies("TheBigMan", "Horror")
TheSmallMan = movies("TheSmallMan", "Comedy")
TheMediumMan = movies("TheMediumMan", "Sitcom")
HowToDance = videos("HowToDance", "Educational","Youtube")
HowToMSexcel = videos("HowToMSexcel","Educationa","Youtube")
PythonBasics = videos("PythonBasics","Educational","Coursera")
janjan_01 = tiktok_videos("HappyHour","Casual","Private")
janjan_02 = tiktok_videos("AngryHour","Horror","Public")
TheBigMan.display()
TheSmallMan.display()
TheMediumMan.display()
HowToDance.display()
HowToMSexcel.display()
PythonBasics.display()
janjan_02.display()
janjan_01.display()
