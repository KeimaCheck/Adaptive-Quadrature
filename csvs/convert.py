#!/usr/bin/env python
#coding=utf-8

import django
from django.template import Template, Context
import csv

if __name__ == "__main__":

    # This line is required for Django configuration
    django.conf.settings.configure()

    # Open and read CSV file
    fid = open("as_table.csv")
    reader = csv.reader(fid)

    # Open and read template
    with open("table_template.tex") as f:
        t = Template(f.read())

    # Define context with the table data
    head = reader.__next__()
    c = Context({"head": head, "table": reader})

    # Render template
    output = t.render(c)

    fid.close()

    # Write the output to a file
    with open("as_table.tex", 'w') as out_f:
        out_f.write(output)
