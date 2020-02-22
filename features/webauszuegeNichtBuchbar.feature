Feature: Basic functionality of the OEBB route search
  Scenario: User searches a route
    Given The web Application was started and the user wants to search for a train connection
    When The user searches a route between <Von> and <Nach> on <Datum> between <Ab> and <An>
    |Von |Nach| Datum |Uhrzeit| Ab |An
    |Wien |Linz| Montag in 3 Wochen |09:00| 1 | 0
    Then The results should include the depature time <Uhrzeit> from <Von Bahnhof> in Train <Zug> and if its billable: <buchbar>
    |Uhrzeit| Von Bahnhof | Zug | buchbar
    |09:42| Wien Hbf| Westbahn | nein
    |10:06| Wien Westbahnhof| Westbahn | nein