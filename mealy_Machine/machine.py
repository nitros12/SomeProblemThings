from collections import namedtuple


class MealyMachine:

    def __init__(self, *states):
        self.states = states
        self.initial = states[0]

    def eat(self, string):
        current = self.initial
        while string:
            current, ret = current.consume(string[0])
            if current is None:
                break
            string = string[1:]
            yield ret

MealyRule = namedtuple("MealyRule", ["rule", "next", "output"])


class MealyNode:

    def __init__(self):
        self.rules = []

    def connect(self, next, rule, output):
        self.rules.append(MealyRule(rule, next, output))

    def loop(self, rule, output):
        self.rules.append(MealyRule(rule, self, output))

    def consume(self, char):
        for i in self.rules:
            if i.rule(char):
                return i.next, i.output
        return None, None


def match(accepts):
    return accepts.__eq__
