with open('./utils/textfile.txt', 'r', encoding='utf8') as f:
    FullFile = [f.readline()]
    for line in iter(f):
        FullFile.append(line)
    print(FullFile)