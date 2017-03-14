import machine

if __name__ == "__main__":

    match_0 = machine.match("0")
    match_1 = machine.match("1")

    s0 = machine.MealyNode()
    s1 = machine.MealyNode()
    s2 = machine.MealyNode()
    s3 = machine.MealyNode()

    s0.loop(match_1, 0)
    s0.connect(s1, match_0, 0)

    s1.loop(match_0, 0)
    s1.connect(s2, match_1, 0)

    s2.connect(s0, match_1, 0)
    s2.connect(s3, match_0, 0)

    s3.connect(s2, match_1, 0)
    s3.connect(s1, match_0, 1)

    mealy = machine.MealyMachine(s0, s1, s2, s3)

    print(list(mealy.eat("0100100")))
