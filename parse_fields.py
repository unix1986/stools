#!/usr/local/python
# Author: unix1986
# Usage: python2.7 parse_fields.py < access.log
# for instance:  Input:  tm1=5 tm2=6 tm3=7
#                Output: tm1=avg_tm1
#                        tm2=avg_tm2
#                        tm3=avg_tm3
import sys
import re

field_pattern = "(?P<{0}>(?<= {1}=)[0-9]+)"

def parse_fields(line, fields, max_fields, min_fields):
    for key in fields.keys():
        _field = key.replace('-', '_')
        if key == 'dch-get':
            res = re.search(r'(?P<dch_get>(?<=dch=[(]main[)])[0-9]+:[0-9]+)', line)
        else:
            res = re.search(field_pattern.format(_field, key), line)
        if not res:
            value = 0
        else:
            value = int(res.group(_field).split(':')[-1].strip())
        fields[key] += value
        if value > max_fields[key]:
            max_fields[key] = value
        if value < min_fields[key]:
            min_fields[key] = value

def print_symbol(ch, num):
    for i in range(0, num):
        sys.stdout.write(ch)
    print

fields = {
    'tm'      : 0,
    'tm1'      : 0,
    'tm2'      : 0
}

if __name__ == '__main__':
    max_fields = fields.copy()
    min_fields = fields.copy()
    for key in fields.keys():
        min_fields[key] = sys.maxint

    cnt = 0
    while True:
        line = sys.stdin.readline();
        if not line:
            break
        cnt += 1
        parse_fields(line, fields, max_fields, min_fields)
    if not cnt:
        cnt = sys.maxint
    for key in fields.keys():
        fields[key] /= cnt
    print_symbol('*', 72)
    print "Query: %-10d AvgTm: %-5d" % (cnt, fields['tm'])
    print_symbol('-', 72)
    print "%-24s%-24s%-24s" % ('Avg', 'Max', 'Min') 
    print_symbol('-', 72)
    for key in fields.keys():
        print "%-10s = %-10d %-10s = %-10d %-10s = %-10d" % (key, fields[key], key, max_fields[key], key, min_fields[key]) 
    print_symbol('*', 72)
    sys.stdout.flush()
