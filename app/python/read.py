import docx
import os


def run():
    doc = docx.Document('Python.docx')

    for paragraph in doc.paragraphs:
        print(paragraph.text)
