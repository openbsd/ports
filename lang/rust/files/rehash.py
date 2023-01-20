#!/usr/bin/env python3

import re
import os

RE_splitlib = re.compile('lib([^-]+)-([0-9a-fA-F]+)\.(so|rlib)')

oldhashes = {}    # list of old hashes already assigned to new value
newhashes = {}    # list of libname associated to a (list of) new hashes


# split a filename in components ("libNAME-HASH.ext")
def splitlib(filename):
    m = RE_splitlib.fullmatch(filename)
    if m is None:
        raise Exception("splitlib failed: {:s}".format(filename))
    return m[1], m[2]


# register newhash inside newhashes
def register_newhashes(base_hash, args):
    i = 0
    for libname in args:
        newhash = "{:s}{:02x}".format(base_hash, i)
        i = i + 1

        # add newhash in the list associated to libname
        newhashes.setdefault(libname, []).append(newhash)


def getnewhash(libname, oldhash):
    # check if oldhash is already assigned
    if oldhash in oldhashes:
        return oldhashes[oldhash]

    try:
        # get the new hash (and remove it from the list)
        newhash = newhashes[libname].pop()

        # add it in assigned oldhashes
        oldhashes[oldhash] = newhash

        return newhash
    except KeyError:
        raise Exception("unknown libname in newhashes: {:s}".format(
            libname,
        ))
    except IndexError:
        raise Exception("not enough newhashes for libname: {:s}".format(
            libname,
        ))


# generic function to walk library directory
def walk_directory(dirname, proc):
    with os.scandir(dirname) as dir:
        for entry in dir:
            if not entry.is_file():
                continue

            libname, hash = splitlib(entry.name)

            # call proc
            proc(entry.name, libname, hash)


# register old hashes from walk a directory to assign a new hash
def register_oldhashes_directory(dirname):
    def register_oldhashes_file(filename, libname, oldhash):
        # construct the fullpath
        fullpath = dirname + '/' + filename

        # get newhash for libname
        newhash = getnewhash(libname, oldhash)

        # debug information
        print("{:s}: {:s}".format(newhash, fullpath))

    walk_directory(dirname, register_oldhashes_file)


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
        print("usage: rehash.py triple name=hash [...]")
        sys.exit(1)

    triple_arch = argv[1]
    base_hash = argv[2]
    liblist = argv[3:]

    liblist.sort()
    register_newhashes(base_hash, liblist)

    # list of directories containing files to rehash
    dirlist = [
        "lib",
        "lib/rustlib/{:s}/lib".format(triple_arch),
    ]

    # register oldhashes by walking directories
    for dirname in dirlist:
        register_oldhashes_directory(dirname)

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
