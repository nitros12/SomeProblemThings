class DLinkedList:

    def __init__(self, data):
        self.prev = None
        self.next = None
        self.data = data

    @classmethod
    def _makenode(cls, prev=None, next=None, data=None):
        node = cls(data)
        node.prev = prev
        node.next = next
        return node

    def append(self, data):
        node = self
        while node.next is not None:
            node = node.next

        node.next = self._makenode(prev=node, data=data)

    def insert(self, pos, data):
        node = self
        for _ in range(pos - 1):
            node = node.next
            if node is None:
                return False

        nextnode = node.next
        node.next = self._makenode(prev=node, next=nextnode, data=data)
        if nextnode is not None:
            nextnode.prev = node.next

        return True

    def delete(self, pos):
        node = self
        for _ in range(pos):
            node = node.next
            if node.next is None:
                return False

        node.prev.next = node.next
        node.next.prev = node.prev

        del node
        return True

    def __str__(self):
        def str_iter():
            node = self
            i = 0
            while True:
                yield f"<n: {i} | d: {node.data}>"
                node = node.next
                i += 1
                if node is None:
                    break

        return " ".join(str_iter())
