#!python3.7
# -*- coding: utf-8 -*-
import tkinter as tk


def hoge_input():
    root = tk.Tk()
    root.option_add('*font', ('FixedSys', 14))
    root.title('えらぶ')
    selection = ['選択肢A', '選択肢B', '選択肢C']
    rdo_var = tk.IntVar()

    for i in range(len(selection)):
        tk.Radiobutton(root, value=i, variable=rdo_var, text=selection[i]).pack(anchor=tk.CENTER, padx=30, pady=3)

    def btn_click():
        num = rdo_var.get()
        self.hoge = selection[num]
        root.destroy()
        print(hoge)
        return hoge

    btn = tk.Button(root, text='OK', command=btn_click)
    btn.pack(fill='x', padx=40, pady=3)
    root.mainloop()
    return self.hoge


if __name__ == "__main__":
    hoge = hoge_input
