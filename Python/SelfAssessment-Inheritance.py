class fileItem:
    name = None
    permissions = None
    os_owner = None
    size = None
    creationDate = None

    def __init__(self, name, pem, own, size, crtDate):
        self.name = name
        self.pem = pem
        self.own = own
        self.size = size
        self.creationDate = crtDate

    def display(self):
        print(self.name, self.pem, self.own, self.size, self.creationDate)



class CsvFile:
    def __init__(self, filename, filesize):
        self.filename = filename
        self.filesize = filesize

class JpgFile:
    def __init__(self, filename, filesize):
        self.filename = filename
        self.filesize = filesize


class Mp3File:
    def __init__(self, filename, filesize):
        self.filename = filename
        self.filesize = filesize
