class Node:
    """Node with left/ right children"""

    def __init__(self, left=None, right=None, weight: int=0, content: str=""):
        self.left = left
        self.right = right

        self._weight = weight  # weight of node
        self._content = content  # data of node

    @staticmethod
    def _xstr(string):
        if string is None:
            return ""
        return str(string)

    @property
    def fullContent(self):
        """Returns self content + content of child nodes if not terminating, otherwise self content only"""
        return "{}{}{}".format(self, self.left.fullContent
                               if self.left else "", self.right.fullContent
                               if self.right else "")

    @property
    def terminating(self):
        """Returns true if no child nodes"""
        return (self.left or self.right) is None

    @property
    def weight(self):
        """Returns sum of child weights + self weight, or only self weight if terminating"""
        if self.terminating:
            return self._weight
        return sum((self.left.weight, self.right.weight)) + self._weight

    def __getitem__(self, key):
        if not key:
            return str(self)

        elif key[0] == "0":
            if self.left is None:
                raise Exception("Key leads to non-existant branch")
            return self.left[key[1:]]

        elif key[0] == "0":
            if self.right is None:
                raise Exception("Key leads to non-existant branch")
            return self.right[key[1:]]

    def find(self, item, prev=""):

        if str(self) == item:
            return prev

        elif self.terminating:  # is a leaf but not matching item
            return False

        if self.left is not None:
            left = self.left.find(item, prev + "0")
            if left:
                return left

        if self.right is not None:
            right = self.right.find(item, prev + "1")
            if right:
                return right

        return False  # Nothing down this branch

    def __str__(self):
        return self._content

    def __lt__(self, other):
        return self.weight < other.weight

    def __eq__(self, other):
        return self.weight == other.weight


def test():
    a = Node(
        left=Node(
            left=Node(
                left=Node(
                    weight=7, content="d"), weight=3, content="a"),
            right=Node(
                weight=33, content="c")),
        right=Node(left=Node(
            weight=12, content="b")))

    print(a)
    print(a.fullContent)

    print("a: {}".format(a.find("a")))
    print("b: {}".format(a.find("b")))
    print("c: {}".format(a.find("c")))
    print("d: {}".format(a.find("d")))
