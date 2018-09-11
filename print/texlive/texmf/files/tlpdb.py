# $OpenBSD: tlpdb.py,v 1.1 2018/09/11 21:32:28 edd Exp $
"""Lightweight TeX Live TLPDB parser."""

import gzip


class DBError(Exception):
    pass


class Pos(object):
    """Describes the position of the parser"""
    TOP = 0
    PKG = 1
    FILES = 2


class FileKind(object):
    RUN = 0
    DOC = 1
    SRC = 2
    BIN = 3

    MAP = {
        "run": RUN,
        "doc": DOC,
        "src": SRC,
        "bin": BIN,
    }

    RMAP = {
        RUN: "run",
        DOC: "doc",
        SRC: "src",
        BIN: "bin",
    }

    @staticmethod
    def from_str(s):
        return FileKind.MAP[s]

    @staticmethod
    def all_kinds():
        return FileKind.MAP.values()


def fields(line):
    return line.split()


class Pkg(object):
    def __init__(self):
        self.files = {}
        for k in FileKind.MAP.values():
            self.files[k] = set()
        self.deps = set()

    def run_files(self):
        return self.files[FileKind.RUN]

    def doc_files(self):
        return self.files[FileKind.DOC]


class Parser(object):
    # Package fields that we don't care about.
    IGNORE_FIELDS = ("category", "revision", "catalogue", "shortdesc",
                     "longdesc", "catalogue-ctan", "catalogue-date",
                     "catalogue-license", "catalogue-topics",
                     "catalogue-version", "catalogue-also", "execute",
                     "postaction")

    def __init__(self, filename):
        self.fh = gzip.GzipFile(filename)

    def parse(self):
        pos = Pos.TOP
        pkg_name = None
        file_kind = None
        pkg = Pkg()

        pkgs = {}
        for line in self.fh:
            if line.startswith("name "):
                assert pos == Pos.TOP
                _, pkg_name = fields(line)
                pos = Pos.PKG
            elif line.startswith(tuple(FileKind.MAP.keys())):
                assert pos != Pos.TOP
                file_kind = FileKind.from_str(fields(line)[0][:3])
                pos = Pos.FILES
            elif line.startswith(" "):
                assert pos == Pos.FILES
                pkg.files[file_kind].add(fields(line)[0])
            elif line.startswith("depend"):
                dep = fields(line)[1]
                if dep.startswith("setting_available_architectures"):
                    # There's one oddly formed package entry used by the
                    # TeX Live installer. We don't care for it.
                    continue
                pkg.deps.add(dep)
                pos = Pos.PKG
            elif line.strip() == "":
                # End of package -- add completed package to the map.
                assert pkg_name not in pkgs
                pkgs[pkg_name] = pkg

                # Reset parser state.
                pos = Pos.TOP
                pkg_name = None
                file_kind = None
                pkg = Pkg()
            else:
                # Some other field we don't care for.
                k = fields(line)[0]
                assert k in Parser.IGNORE_FIELDS
                pos = Pos.PKG
                file_kind = None
        return DB(pkgs)


class PkgPartSpec(object):
    """Describes a subset of TeX packages.

    Each of these gets expanded to a set of `PkgPart`s.
    """

    def __init__(self, pkg_name, file_kind, include_deps=True):
        self.pkg_name = pkg_name
        self.file_kind = file_kind
        self.include_deps = include_deps

    def __str__(self):
        return "PkgPartSpec(%s, %s, include_deps=%s)" % \
            (self.pkg_name, FileKind.RMAP[self.file_kind], self.include_deps)

    def __repr__(self):
        return str(self)

    def to_pkg_part(self):
        return PkgPart(self.pkg_name, self.file_kind)


class PkgPart(object):
    """A hashable pkg-name and file-kind combo."""

    def __init__(self, pkg_name, file_kind):
        self.pkg_name = pkg_name
        self.file_kind = file_kind

    # Do we need this dance?
    def __hash__(self):
        return hash((self.pkg_name, self.file_kind))

    def __eq__(self, other):
        return self.pkg_name == other.pkg_name and \
            self.file_kind == other.file_kind

    def __neq__(self, other):
        return not self == other

    def __str__(self):
        return "PkgPart(%s, %s)" % \
            (self.pkg_name, FileKind.RMAP[self.file_kind])

    def __repr__(self):
        return str(self)


class DB(object):
    def __init__(self, map):
        self.map = map

    def expand_pkg_part_specs(self, pkg_part_specs):
        work = set(pkg_part_specs)
        ret = set()
        seen_specs = set()
        while work:
            pps = work.pop()
            if pps in seen_specs:
                continue
            pkg_name = pps.pkg_name

            if pkg_name.endswith(".ARCH"):
                # Skip binary packages.
                continue

            pkg = self.map[pkg_name]
            pkg_part = pps.to_pkg_part()
            if pkg_part not in ret:
                ret.add(pkg_part)
                if pps.include_deps:
                    for dep in pkg.deps:
                        new_spec = PkgPartSpec(dep, pps.file_kind)
                        if new_spec not in seen_specs:
                            work.add(new_spec)
        return ret

    def get_pkg_parts(self, pp_spec_strs):
        pp_specs = set()
        for spec in pp_spec_strs:
            pp_specs.update(DB.parse_pkg_subset_spec(spec))

        return self.expand_pkg_part_specs(pp_specs)

    def get_pkg_part_files(self, pps, fn_prefix=""):
        """Returns the files for a given package part."""

        ret = set()
        for pp in pps:
            ret.update([fn_prefix + x
                        for x in self.map[pp.pkg_name].files[pp.file_kind]])
        return ret

    def pkgs(self):
        return self.map.keys()
