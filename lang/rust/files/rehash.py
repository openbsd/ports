#!/usr/bin/env python3

import re
import os

RE_splitlib = re.compile(r'lib(.+)-([0-9a-fA-F]+)\.(so|rlib|rmeta)')

# libraries present only on some archs. they get their new hashes after
# all the other libraries, so they don't shift the other filenames.
deferred_libnames = ["cpufeatures"]

oldhashes = {}    # list of old hashes already assigned to new value
newhashes = {}    # list of libname associated to a (list of) new hashes
bash_hash = "?"

# split a filename in components ("libNAME-HASH.ext")
def splitlib(filename):
    m = RE_splitlib.fullmatch(filename)
    if m is None:
        raise Exception("splitlib failed: {:s}".format(filename))
    return m[1], m[2]


# global counter to keep track of newhash allocated
newhash_counter = 0

def getnewhash(libname, oldhash):
    global newhash_counter

    if oldhash not in oldhashes:
        # get the new hash
        newhash = "{:s}{:03x}".format(base_hash, newhash_counter)
        newhash_counter += 1

        # add it in assigned oldhashes
        oldhashes[oldhash] = newhash

    return oldhashes[oldhash]


# generic function to walk library directory
def walk_directory(dirname, proc):
    filenames = []
    with os.scandir(dirname) as dir:
        for entry in dir:
            if not entry.is_file():
                continue
            filenames.append(entry.name)

    for name in filenames:
        libname, hash = splitlib(name)

        # call proc
        proc(name, libname, hash)


# register old hashes from all directories to assign a new hash.
#
# the directory order and the old hashes differ between archs, so the new
# hashes are given in an order that only depends on the library names:
# sorted by libname, a library with a rlib (std) before one with only a
# rmeta (dev), and arch specific libraries at the end.
def register_oldhashes(dirlist):
    libs = {}    # oldhash -> [libname, set of extensions, list of paths]

    for dirname in dirlist:
        def register_oldhashes_file(filename, libname, oldhash):
            ext = filename.rsplit('.', 1)[1]
            lib = libs.setdefault(oldhash, [libname, set(), []])
            lib[1].add(ext)
            lib[2].append(dirname + '/' + filename)

        walk_directory(dirname, register_oldhashes_file)

    def sortkey(oldhash):
        libname, exts, paths = libs[oldhash]
        return (libname in deferred_libnames, libname,
            'rlib' not in exts, sorted(exts))

    for oldhash in sorted(libs, key=sortkey):
        libname, exts, paths = libs[oldhash]

        # get newhash for libname
        newhash = getnewhash(libname, oldhash)

        # debug information
        for fullpath in paths:
            print("{:s}: {:s}".format(newhash, fullpath))


# rehash a directory
def rehash_directory(dirname):
    def rehash_file(oldfilename, libname, oldhash):
        # get back newhash
        newhash = getnewhash(libname, oldhash)
        newfilename = oldfilename.replace(oldhash, newhash)

        # get fullpath for old and new
        oldpath = dirname + '/' + oldfilename
        newpath = dirname + '/' + newfilename

        # rename the file
        os.rename(oldpath, newpath)

    print("renaming files in '{:s}'".format(dirname))
    walk_directory(dirname, rehash_file)


# change the hash inside all the files (libraries and binaries)
def change_hash_in_files():
    from tempfile import NamedTemporaryFile

    with NamedTemporaryFile() as tempfile:
        # generate a sedfile from oldhash to newhash
        for oldhash, newhash in oldhashes.items():
            sedline = "s/{:s}/{:s}/g\n".format(
                oldhash,
                newhash,
            )
            tempfile.write(bytes(sedline, 'utf8'))

        # flush to ensure the sedfile to be consistent
        tempfile.flush()

        # change the content of all files
        sedcmd = "find . -type f -exec sed -i -f {:s} {:s} +".format(
            tempfile.name,
            "{}",
        )
        print("applying content change...")
        if os.system(sedcmd) != 0:
            raise Exception("sed command failed: {:s}".format(sedcmd))


if __name__ == '__main__':
    from sys import argv

    if len(argv) < 2:
        print("usage: rehash.py triple hash-prefix")
        sys.exit(1)

    triple_arch = argv[1]
    base_hash = argv[2]

    # list of directories containing files to rehash
    dirlist = [
        "lib",
        "lib/rustlib/{:s}/lib".format(triple_arch),
    ]

    # register oldhashes by walking directories
    register_oldhashes(dirlist)

    # check that all new hashes are assigned
    for libname, hashes in newhashes.items():
        if len(hashes) != 0:
            print("WARNING: unassigned hashes ({:d}) for '{:s}'".format(
                len(hashes),
                libname,
            ))

    # rehash the files
    for dirname in dirlist:
        rehash_directory(dirname)
    change_hash_in_files()
