#!/usr/local/bin/env python
# -*- coding: utf-8 -*-
import os
import sys

H_FILE_TEMPLATE = '''\
#ifndef %s
#define %s
%s
class %s {
public:
    %s();
    ~%s();

private:

};
%s
#endif // %s

/* vim: set ts=4 sw=4 sts=4 tw=80 et: */\
'''

CPP_FILE_TEMPLATE = '''\
#include "%s"
%s
%s::%s() {

}

~%s::%s() {

}
%s
/* vim: set ts=4 sw=4 sts=4 tw=80 et: */\
'''

CPP_SUFFIX = (
    '.cpp',
    '.cc',
    '.C'
)

g_cpp_suffix = '.cpp'

def Main():
    try:
        if os.path.exists(sys.argv[1] + '.h'):
            print '%s has existed! failed.' % (sys.argv[1] + '.h')
            sys.exit(1)
        if os.path.exists(sys.argv[1] + g_cpp_suffix):
            print '%s has existed! failed.' % (sys.argv[1] + g_cpp_suffix)
            sys.exit(1)
        h_file = open(sys.argv[1] + '.h', 'wb')
        cpp_file = open(sys.argv[1] + g_cpp_suffix, 'wb')
        name_tokens = sys.argv[1].split('_')
        macro_name = '__'
        class_name = ''
        for token in name_tokens:
            macro_name += token.upper() + '_'
            class_name += token.capitalize()
        macro_name += "H__"
        name_space_tokens = []
        if len(sys.argv) == 3:
            name_space_tokens = sys.argv[2].split('/')
        name_space_beg = ''
        name_space_end = ''
        for token in name_space_tokens:
            if token == name_space_tokens[0]:
                name_space_beg += '\n'
            name_space_beg += 'namespace ' + token + ' { '
            name_space_end = '} // namespace ' + token + '\n' + name_space_end
            if token == name_space_tokens[-1]:
                name_space_beg += '\n'
                name_space_end = '\n' + name_space_end
        h_file.write(H_FILE_TEMPLATE % (
            macro_name,
            macro_name,
            name_space_beg,
            class_name,
            class_name,
            class_name,
            name_space_end,
            macro_name))
        h_file.close()
        cpp_file.write(CPP_FILE_TEMPLATE % (
            sys.argv[1] + '.h',
            name_space_beg,
            class_name,
            class_name,
            class_name,
            class_name,
            name_space_end))
        cpp_file.close()
    except Exception as err:
        h_file.close()
        cpp_file.close()
        print err

if __name__ == '__main__':
    Main()

# vim: set ts=4 sw=4 sts=4 tw=80 et: #
