from player import Player
from playerreader import PlayerReader

class PlayerStats():
    def __init__(self, reader):
        self.reader = reader

    def top_scorers_by_nationality(self, nationality):
        playerlist = self.reader.getPlayers()
        players = []

        for player in playerlist:
            if player.nationality == nationality:
                players.append(player)

        return players
