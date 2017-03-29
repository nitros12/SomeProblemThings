class hacky:

    def __or__(self, other):
        return (self, other)

    def __eq__(self, other):
        if isinstance(other, (list, tuple)):
            return any(map(self.__eq__, other))
        return super().__eq__(other)
