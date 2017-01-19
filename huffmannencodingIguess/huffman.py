import json

from heap import Node


def encodeHuffmanHeap(string: str) -> Node:
    """Encodes a string into a huffman encoded heap and returns the first node"""
    nodes = [Node(content=i, weight=string.count(i)) for i in set(string)]

    # string -> "aabbcabaabbcb", so
    # nodes -> [Node(content='a', weight=4), Node(content='b', weight=6), ...]

    while len(nodes) > 1:
        right, left = nodes.pop(0), nodes.pop(0)

        print(f"left: {left.fullContent}, right: {right.fullContent}")

        nodes.append(Node(left, right))
        nodes.sort()

    return nodes.pop(0)


def encodeToDict(string: str) -> (dict, str):
    heap = encodeHuffmanHeap(string)

    charMap = {i: heap.find(i) for i in set(string)}

    newString = string
    for k, j in charMap.items():
        newString = newString.replace(k, j)

    return charMap, newString


def encodeToFile(string: str, file) -> bytes:
    """Encodes string to huffman, Writes to file"""

    def splitBy(string, n):
        while string:
            yield string[:n]
            string = string[n:]

    charMap, string = encodeToDict(string)

    return json.dump({"map":charMap, "string":string}, file)

def decodeFromDict(charsDict: dict, string: str) -> str:
    """Decodes huffman dict and encoded string to original string"""
    newDict = {k:j for j,k in charsDict.items()}
    decoded = ""
    currentMatch = ""
    for i, c in enumerate(string):
        currentMatch += c
        if i < len(string) - 1:
            if newDict.get(currentMatch, False) and (currentMatch + string[i+1]) not in newDict:  # next one breaks sequence
                decoded += newDict.get(currentMatch, "")
                currentMatch = str()
    decoded += newDict.get(currentMatch, "")

    return decoded

def decodeFromFile(file) -> str:
    """Decodes huffman encoded bytes to original string"""

    jsonData = json.load(file)

    charDict = jsonData["map"]
    string = jsonData["string"]

    return decodeFromDict(charDict, string)
