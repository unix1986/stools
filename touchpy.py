#!/usr/local/bin/env python
# -*- coding: utf-8 -*-
import os
import sys

PY_FILE_TEMPLATE = '''\
#!/usr/local/bin/env python
# -*- coding: utf-8 -*-

def main():
    pass

if __name__ == '__main__':
    main()

# vim: set ts=4 sw=4 sts=4 tw=80 et: #\
'''

def main():
    try:
        if os.path.exists(sys.argv[1] + '.py'):
            print '%s has existed! failed.' % (sys.argv[1] + '.py')
            sys.exit(1)
        py_file = open(sys.argv[1] + '.py', 'wb')
        py_file.write(PY_FILE_TEMPLATE)
        py_file.close()
    except Exception as err:
        py_file.close()
        print err

if __name__ == '__main__':
    main()

# vim: set ts=4 sw=4 sts=4 tw=80 et: #
