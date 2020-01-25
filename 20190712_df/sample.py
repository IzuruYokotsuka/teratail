# -*- coding: utf_8 -*-
import re

TEXT_FILE = "sample.txt"


def convert(lines):
    ret =[]
    for line in lines:
        if re.match(r"^\d{4}/\d{1,2}/\d{1,2}", line):
            index = line
        else:
            row = line.split()
            row.insert(0, index)



    return ret

if __name__ == '__main__':
    with open(TEXT_FILE, "r") as f:  #　txt形式の読み込み
        lines = f.readlines()

    print(convert(lines))