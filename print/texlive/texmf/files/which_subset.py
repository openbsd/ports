#!/usr/bin/env python3
"""
Prints the dependencies of a TeX document in terms of OpenBSD packing lists.

To use this script you need a TeX `.fls` file. To generate one, compile your
TeX document with the `-recorder` argument.

Usage:
    which_subset.py <fls-file> [plist_dir]

If `plist_dir` is not present, the default ports path is assumed.
"""


import sys
import os
from os.path import isfile
from collections import defaultdict

DEFAULT_PLIST_DIR = "/usr/ports/print/texlive/texmf/pkg"
NO_PLIST = "NOT-IN-A-PLIST"


def parse_file_list(filename):
    files = set()
    with open(filename) as fh:
        for line in fh:
            key, val = line.strip().split()
            if key != "INPUT" or val.endswith(".aux"):
                continue
            files.add(val)
    return files


def find_file(filename, plists, plist_dir):
    for plist in plists:
        plist_path = os.path.join(plist_dir, plist)
        with open(plist_path) as fh:
            for line in fh:
                if line.startswith("@"):
                    continue
                line = line.strip()
                if line.endswith(os.sep):
                    continue
                pfilename = "/usr/local/" + line
                if pfilename == filename:
                    return plist
    else:
        return "NOT-IN-A-PLIST"


def find_files(files, plist_contents):
    memberships = defaultdict(set)  # pairs: plist -> files
    for find_file in files:
        for plist, plist_files in plist_contents.items():
            if find_file in plist_files:
                memberships[plist].add(find_file)
        else:
            memberships[NO_PLIST].add(find_file)
    return memberships


def load_plists(plist_files, plist_dir):
    plist_contents = {}
    for plist in plist_files:
        files = set()
        plist_path = os.path.join(plist_dir, plist)
        with open(plist_path) as fh:
            for line in fh:
                if line.startswith("@"):
                    continue
                line = line.strip()
                if line.endswith(os.sep):
                    continue
                pfilename = "/usr/local/" + line
                files.add(pfilename)
        plist_contents[plist] = files
    return plist_contents


def main(filename, tl_plist_dir):
    files = parse_file_list(filename)
    plist_files = [x for x in os.listdir(tl_plist_dir) if
                   isfile(os.path.join(tl_plist_dir, x)) and
                   x.startswith("PLIST") and not x.endswith(".orig")]
    plist_contents = load_plists(plist_files, tl_plist_dir)
    memberships = find_files(files, plist_contents)
    for plist, files in memberships.items():
        print("%s:" % plist)
        for f in files:
            print("  %s" % f)


def usage():
    print(__doc__)
    sys.exit(1)


if __name__ == "__main__":
    if len(sys.argv) < 2:
        usage()

    filename = sys.argv[1]
    try:
        tl_plist_dir = sys.argv[2]
    except IndexError:
        tl_plist_dir = DEFAULT_PLIST_DIR

    main(filename, tl_plist_dir)
