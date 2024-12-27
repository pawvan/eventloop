def brainfuck_interpreter(code):
    cells = [0] * 30000
    ptr = 0
    stack = []
    i = 0

    while i < len(code):
        cmd = code[i]
        if cmd == '>':
            ptr += 1
        elif cmd == '<':
            ptr -= 1
        elif cmd == '+':
            cells[ptr] += 1
        elif cmd == '-':
            cells[ptr] -= 1
        elif cmd == '.':
            print(chr(cells[ptr]), end="")
        elif cmd == ',':
            cells[ptr] = ord(input()[0])
        elif cmd == '[':
            if cells[ptr] == 0:
                loop = 1
                while loop:
                    i += 1
                    if code[i] == '[':
                        loop += 1
                    elif code[i] == ']':
                        loop -= 1
            else:
                stack.append(i)
        elif cmd == ']':
            if cells[ptr] != 0:
                i = stack[-1]
            else:
                stack.pop()
        i += 1

with open('src/main.bf', 'r') as f:
    brainfuck_interpreter(f.read())
