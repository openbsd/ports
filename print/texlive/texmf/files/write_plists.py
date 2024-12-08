#!/usr/bin/env python3
"""
Write PLISTs based on the output of update_plist_hints.py.

This is temporary and will be removed once we are integrated with
update-plist(1).
"""

import os
import sys
import re

YEAR = 2024
THIS_DIR = os.path.abspath(os.path.dirname(__file__))
PLIST_DIR = os.path.abspath(os.path.join(THIS_DIR, "..", "pkg"))
PLISTS = "-buildset", "-main", "-context", "-full", "-docs"
EXISTING_DIRS = ["bin", "share", "info", "man"] + \
    ["man/man%d" % i for i in range(1, 9)] + ["man3f", "man3p"]

MAN_RE = re.compile(r'^man/man[0-9]/.*\.[0-9]')
INFO_RE = re.compile(r'^info/.*\.info')


TOP_MATTER = {
    "-buildset": [
        "@conflict texlive_texmf-minimal-<2024",
        # Scaffold a dir for ports wishing to install extra tex macros.
        "share/texmf-local/",
    ],
    "-main": [
        "@conflict texlive_texmf-full-<2024",
        "@conflict texlive_texmf-buildset-<2024",
    ],
    "-context": [],
    "-full": [],
    "-docs": [],
}

BOTTOM_MATTER = {
    "-buildset": ["@tag mktexlsr"],
    "-main": ["@tag mktexlsr"],
    "-context": [
        "@exec %D/bin/mtxrun --generate > /dev/null 2>&1",
        "@tag mktexlsr"
    ],
    "-full": ["@tag mktexlsr"],
    "-docs": ["@tag mktexlsr"],
}


def open_plist(suffix):
    return open(os.path.join(PLIST_DIR, "PLIST" + suffix), "w")


def dir_entries(path, exclude=[]):
    dirs = []
    while path != "":
        path = os.path.dirname(path)
        if path != "" and path not in exclude:
            dirs.append(path + os.path.sep)
    return dirs


def main():
    plist_map = {}
    all_files = {}
    dir_ents = {}
    for plist in PLISTS:
        plist_map[plist] = open_plist(plist)
        for line in TOP_MATTER[plist]:
            plist_map[plist].write(line + "\n")

        all_files[plist] = set()
        dir_ents[plist] = set()

    for line in sys.stdin:
        if line.startswith("#"):
            continue  # omit commented lines for now.

        filename, plist = line.split()

        dir_ents[plist].update(dir_entries(filename, EXISTING_DIRS))
        all_files[plist].add(filename)

    for plist, files in all_files.items():
        fh = plist_map[plist]

        for fl in sorted(files | dir_ents[plist]):
            if re.match(MAN_RE, fl):
                fh.write("@man ")
            elif re.match(INFO_RE, fl):
                fh.write("@info ")
            fh.write(fl + "\n")

        for line in BOTTOM_MATTER[plist]:
            fh.write(line + "\n")

        fh.close()


if __name__ == "__main__":
    main()
