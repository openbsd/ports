#!/usr/bin/env python3
# $OpenBSD: write_plists.py,v 1.2 2019/11/11 22:54:17 edd Exp $
"""
Write PLISTs based on the output of update_plist_hints.py.

This is temporary and will be removed once we are integrated with
update-plist(1).
"""

import os
import sys
import re

YEAR = 2019
THIS_DIR = os.path.abspath(os.path.dirname(__file__))
PLIST_DIR = os.path.abspath(os.path.join(THIS_DIR, "..", "pkg"))
PLISTS = "-buildset", "-main", "-context", "-full", "-docs"
EXISTING_DIRS = ["share", "info", "man"] + \
    ["man/man%d" % i for i in range(1, 9)] + ["man3f", "man3p"]

MAN_RE = re.compile(r'^man/man[0-9]/.*\.[0-9]')
INFO_RE = re.compile(r'^info/.*\.info')


TOP_MATTER = {
    "-buildset": [
        "@comment $" "OpenBSD$",
        "@conflict teTeX_texmf-*",
        "@conflict texlive_base-<%s" % YEAR,
        "@conflict texlive_texmf-docs-<%s" % YEAR,
        "@conflict texlive_texmf-minimal-<%s" % YEAR,
        "@conflict texlive_texmf-full-<%s" % YEAR,
        "@conflict texlive_texmf-context-<%s" % YEAR,
        "@pkgpath print/texlive/texmf-minimal",
        "@pkgpath print/teTeX/texmf",
        # Scaffold a dir for ports wishing to install extra tex macros.
        "share/texmf-local/",
    ],
    "-main": [
        "@comment $" "OpenBSD$",
        "@conflict teTeX_texmf-*",
        "@conflict texlive_base-<%s" % YEAR,
        "@conflict texlive_texmf-docs-<%s" % YEAR,
        "@conflict texlive_texmf-full-<%s" % YEAR,
        "@conflict texlive_texmf-buildset-<%s" % YEAR,
        "@conflict texlive_texmf-context-<%s" % YEAR,
        "@pkgpath print/teTeX/texmf",
    ],
    "-context": [
        "@comment $" "OpenBSD$",
        "@conflict teTeX_texmf-*",
        "@conflict texlive_base-<%s" % YEAR,
        "@conflict texlive_texmf-docs-<%s" % YEAR,
        "@conflict texlive_texmf-full-<%s" % YEAR,
        "@conflict texlive_texmf-buildset-<%s" % YEAR,
        "@conflict texlive_texmf-minimal-<%s" % YEAR,
    ],
    "-full": [
        "@comment $" "OpenBSD$",
        "@conflict teTeX_texmf-*",
        "@conflict texlive_base-<%s" % YEAR,
        "@conflict texlive_texmf-docs-<%s" % YEAR,
        "@conflict texlive_texmf-minimal-<%s" % YEAR,
        "@conflict texlive_texmf-buildset-<%s" % YEAR,
        "@conflict texlive_texmf-context-<%s" % YEAR,
        "@pkgpath print/texlive/texmf-full",
        "@pkgpath print/teTeX/texmf",
    ],
    "-docs": [
        "@comment $" "OpenBSD$",
        "@conflict teTeX_texmf-doc-*",
        "@conflict texlive_base-<%s" % YEAR,
        "@conflict texlive_texmf-minimal-<%s" % YEAR,
        "@conflict texlive_texmf-full-<%s" % YEAR,
        "@conflict texlive_texmf-buildset-<%s" % YEAR,
        "@conflict texlive_texmf-context-<%s" % YEAR,
        "@pkgpath print/texlive/texmf-docs",
        "@pkgpath print/teTeX_texmf,-doc",
    ],
}

BOTTOM_MATTER = {
    "-buildset": ["@tag mktexlsr"],
    "-main": ["@tag mktexlsr"],
    "-context": [
        "@unexec rm -Rf %D/share/texmf-var/luatex-cache/trees",
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
