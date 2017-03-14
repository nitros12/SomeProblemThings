def _extract_bits(string: str) -> [int]:
    for i in string:
        yield from bin(ord(i))[2:]


def pack_unicode(bits: [int]) -> [[int]]:
    def take_n(lst, n):
        for i in range(0, len(lst), n):
            yield ''.join(lst[i: i + n])

    bits_to_take = 21

    for i in take_n(list(bits), bits_to_take):
        group = []
        group.append(int(f"11110{i[:3]}", base=2))
        for k in range(3, 18, 6):
            group.append(int(f"10{i[k:k+6]}", base=2))
        yield group


def concat_bytes(bits: [[int]]) -> [int]:
    for i in bits:
        num = 0
        for n, c in enumerate(i):
            num += c << (n * 8)
        yield num
