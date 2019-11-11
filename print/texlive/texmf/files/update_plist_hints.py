#!/usr/bin/env python3
"""
Output update-plist(1) hints for which files go into which PLIST.

Also write symlinks.mk Makefile fragments.

XXX this is not yet integrated with update-plist(1).

Usage:
  env WRKINST=... TRUEPREFIX=... python2.7 update_plist_hints.py <tlpdb>

Arguments:
    tlpdb: The TeX Live database file to use.
"""

import re
import sys
import os
from tlpdb import PkgPartSpec, FileKind, Parser


MANS_INFOS_RE = re.compile(r'(man\/man[0-9]\/.*[0-9]|info\/.*\.info)$')
MOVE_MANS_INFOS_RE = re.compile(r'^share/texmf-dist/doc/(man|info)/')


def fatal(msg):
    sys.stderr.write(msg + "\n")
    sys.exit(1)


# Read environment
try:
    WRKINST = os.environ["WRKINST"]
    TRUEPREFIX = os.environ["TRUEPREFIX"][1:]
except KeyError:
    fatal("This requires WRKINST and TRUEPREFIX environment vars set")


# Individual files that conflict with other ports.
CONFLICT_FILES = set([
    # Comes from print/ps2eps.
    # ps2eps is included in a larger texlive package called pstools, so it
    # cannot be excluded by package. We disable this in the base build at
    # configure time.
    "man/man1/bbox.1",
    "man/man1/disdvi.1",
    # We have a psutils port, but tex live's version includes some other
    # stuff (perl scripts). Best package those up.
    # a bunch of perl scripts.
    "man/man1/epsffit.1",
    "man/man1/extractres.1",
    "man/man1/psutils.1",
    "man/man1/psjoin.1",
    "man/man1/includeres.1",
    "man/man1/ps2eps.1",
    "man/man1/psbook.1",
    "man/man1/psnup.1",
    "man/man1/psresize.1",
    "man/man1/psselect.1",
    "man/man1/pstops.1",
])


def move_mans_and_infos(file_set):
    return set([re.sub(MOVE_MANS_INFOS_RE, r'\g<1>/', i)
                for i in file_set])


def collect_files(pp_specs, db, regex=None, invert_regex=False):
    """Query the database and get file sets"""

    parts = db.expand_pkg_part_specs(pp_specs)
    files = move_mans_and_infos(db.get_pkg_part_files(parts, "share/"))
    symlinks = db.get_pkg_part_symlinks(parts)
    if regex:
        if not invert_regex:
            return set([f for f in files if re.match(regex, f)]), symlinks
        else:
            return set([f for f in files if not re.match(regex, f)]), symlinks
    else:
        return files, symlinks


def build_subset_file_lists(tlpdb):
    # Set up.
    sys.stderr.write("parsing tlpdb...\n")
    db = Parser(tlpdb).parse()

    # Helpers to build pkg part specifications.
    def docspecs(pkg_list, include_deps=True):
        return [PkgPartSpec(pkg, FileKind.DOC, include_deps)
                for pkg in pkg_list]

    def runspecs(pkg_list, include_deps=True):
        return [PkgPartSpec(pkg, FileKind.RUN, include_deps)
                for pkg in pkg_list]

    def allspecs(pkg_list):
        return [PkgPartSpec(pkg, kind)
                for pkg in pkg_list
                for kind in FileKind.all_kinds()]

    sys.stderr.write("making plist map...\n")

    # CONFLICTING PACKAGES
    # Whole packages that are ported elsewhere.
    conflict_pkgs = ["asymptote", "latexmk", "texworks", "t1utils",
                     "dvi2tty", "detex", "texinfo"]
    conflict_pkg_files, conflict_symlinks = \
        collect_files(allspecs(conflict_pkgs), db)

    # BUILDSET
    # The smallest subset for building ports.
    buildset_pkgs = [
        # Barebones of a working latex system
        "scheme-basic",
        # textproc/dblatex
        "anysize", "appendix", "changebar",
        "fancyvrb", "float", "footmisc",
        "jknapltx", "multirow", "overpic",
        "stmaryrd", "subfigure",
        "fancybox", "listings", "pdfpages",
        "titlesec", "wasysym",
        # gnusetp/dbuskit
        "ec",
        # graphics/asymptote
        "epsf", "parskip",
        # gnusetp/dbuskit, graphics/asymptote
        "cm-super",
        # devel/darcs
        "preprint", "url",
        # print/lilypond (indirect via fonts/mftrace)
        "metapost",
        # www/yaws
        "times", "courier",
        # coccinelle
        "comment", "xcolor", "helvetic", "ifsym", "boxedminipage", "endnotes",
        "moreverb", "wrapfig", "xypic",
        # math/R
        "inconsolata",
        # books/tex-by-topic
        "svn-multi", "avantgar", "ncntrsbk", "fontname",
        ]
    buildset_files, buildset_symlinks = \
        collect_files(runspecs(buildset_pkgs), db)
    # Man and info files from the builset carry forward to the minimal set.
    buildset_doc_files, _ = \
        collect_files(docspecs(buildset_pkgs), db, MANS_INFOS_RE)

    # CONTEXT
    # Subset containing only ConTeXt itself and any ConTeXt packages.
    context_pkgs = [p for p in db.pkgs() if p.startswith("context")]
    context_files, context_symlinks = collect_files(
        runspecs(context_pkgs, include_deps=False), db)
    context_doc_files, no_symlinks = collect_files(
        docspecs(context_pkgs, include_deps=False), db, MANS_INFOS_RE)
    assert len(no_symlinks) == 0
    context_files.update(context_doc_files)

    # MINIMAL
    # Scheme-tetex minus anything we installed in the buildset. Note that the
    # files in this subset go in "PLIST-main" (not "PLIST-minimal").
    minimal_pkgs = ["scheme-tetex"]
    minimal_files, minimal_symlinks = collect_files(runspecs(minimal_pkgs), db)
    minimal_doc_files, no_symlinks = collect_files(
        docspecs(minimal_pkgs), db, MANS_INFOS_RE)
    assert len(no_symlinks) == 0
    minimal_files.update(minimal_doc_files)
    minimal_files.update(buildset_doc_files)
    minimal_files = minimal_files - (buildset_files | context_files)
    minimal_symlinks = \
        minimal_symlinks - (buildset_symlinks | context_symlinks)

    # FULL
    # Largest subset.
    full_pkgs = ["scheme-full"]
    full_files, full_symlinks = collect_files(runspecs(full_pkgs), db)
    full_doc_files, no_symlinks = \
        collect_files(docspecs(full_pkgs), db, MANS_INFOS_RE)
    assert len(no_symlinks) == 0
    full_files.update(full_doc_files)
    full_files = full_files - (minimal_files | buildset_files | context_files)
    full_symlinks = full_symlinks - \
        (minimal_symlinks | buildset_symlinks | context_symlinks)

    # DOCS
    # We only include docs for scheme-tetex so as to save space, but we do this
    # in such a way as to have all unincluded docs commented in PLIST-docs.
    other_plist_doc_files = buildset_doc_files | minimal_doc_files | \
        context_doc_files | full_doc_files
    docs_files, no_symlinks = collect_files(docspecs(["scheme-full"]), db)
    assert len(no_symlinks) == 0
    docs_files -= other_plist_doc_files
    tetex_docs_files, no_symlinks = \
        collect_files(docspecs(["scheme-tetex"]), db)
    assert len(no_symlinks) == 0
    commented_docs_files = docs_files - tetex_docs_files

    # target-plist -> make-target * symlinks
    symlink_map = {
        TargetPlist.BUILDSET: ("tl-symlinks-buildset", buildset_symlinks),
        TargetPlist.MINIMAL: ("tl-symlinks-main", minimal_symlinks),
        TargetPlist.FULL: ("tl-symlinks-full", full_symlinks),
        TargetPlist.CONTEXT: ("tl-symlinks-context", context_symlinks),
        # docs subset never contains symlinks, as asserted above.
    }

    # man/man1/dvitype.1 is in the wrong set and has symlinks from another set
    # pointing to it. This confuses makewhatis(8). We move it.
    assert "man/man1/dvitype.1" in full_files
    minimal_files.update(("man/man1/dvitype.1", ))
    full_files.remove("man/man1/dvitype.1")

    plist_map = {
        TargetPlist.BUILDSET: buildset_files,
        TargetPlist.MINIMAL: minimal_files,
        TargetPlist.FULL: full_files,
        TargetPlist.CONTEXT: context_files,
        TargetPlist.DOCS: docs_files
    }

    comment_files = CONFLICT_FILES | conflict_pkg_files | commented_docs_files
    return plist_map, comment_files, symlink_map


class TargetPlist(object):
    UNREF = 0  # The subsets we used doesn't reference this file.
    BUILDSET = 1
    MINIMAL = 2
    FULL = 3
    CONTEXT = 4
    DOCS = 5

    STR_MAP = {
        # UNREF should never be used here.
        BUILDSET: "-buildset",
        MINIMAL: "-main",
        FULL: "-full",
        CONTEXT: "-context",
        DOCS: "-docs",
    }

    @staticmethod
    def to_str(code):
        return TargetPlist.STR_MAP[code]


def build_file_map(plist_map):
    """Builds a mapping for fast filename to target PLIST lookups."""

    sys.stderr.write("making file map...\n")
    file_map = {}
    for plist in TargetPlist.STR_MAP.keys():
        if plist == TargetPlist.UNREF:
            continue
        for f in plist_map[plist]:
            file_map[f] = plist
    return file_map


def should_comment_file(f, commented_files):
    return (
        # Stuff provided by other ports.
        f in commented_files or
        # Windows junk
        re.match(r'.*\.([Ee][Xx][Ee]|[Bb][Aa][Tt])$', f) or
        # no win32 stuff, but should probably keep win32 images in tl docs.
        ("win32" in f and "doc/texlive" not in f) or
        "mswin" in f or
        f.endswith(".vbs") or
        # Context source code -- seriously?
        re.match(r'^share/texmf-dist/scripts/context/stubs/source/', f) or
        # PDF versions of manuals
        re.match(r'^.*.man[0-9]\.pdf$', f) or
        # We don't want anything that isn't in the texmf tree.
        # Most of this is installer stuff which does not apply
        # to us.
        not f.startswith(("share/texmf", "man/", "info/")) or
        # TeX live installer, we never want
        ("tlmgr" in f and "doc/texlive" not in f) or
        # We don't need build instructions in our binary packages
        f.endswith("/tlbuild.info")
    )


def walk_fake(file_map, commented_files):
    """Walks the fake directory emitting one line to stdout for each file."""

    sys.stderr.write("writing hints...\n")

    strip_prefix = os.path.join(WRKINST, TRUEPREFIX)
    if not strip_prefix.endswith(os.sep):
        strip_prefix += os.sep

    for root, dirs, files in os.walk(WRKINST):
        for basename in files:
            # Ports tree writes some cookies. Don't classify those.
            if root == WRKINST and basename.startswith("."):
                continue
            filename = os.path.join(root, basename)
            assert filename.startswith(strip_prefix)
            filename = filename[len(strip_prefix):]

            unreferenced = False
            if filename.startswith("share/texmf-var/"):
                # texmf-var files not in the DB, but belong in the buildset.
                target = TargetPlist.BUILDSET
            else:
                try:
                    target = file_map[filename]
                except KeyError:
                    # Any un-referenced files go into PLIST-full commented.
                    target = TargetPlist.FULL
                    unreferenced = True

            if unreferenced or should_comment_file(filename, commented_files):
                sys.stdout.write("#")

            print("%s %s" % (filename, TargetPlist.to_str(target)))


def process_symlinks(symlink_map):
    sys.stderr.write("writing symlinks.mk...\n")
    with open("symlinks.mk", "w") as fh:
        fh.write("# $OpenBSD: update_plist_hints.py,v 1.3 2019/11/11 22:54:17 edd Exp $\n")
        fh.write("# This file is autogenerated. Do not edit.\n\n")

        for target_plist, (make_target, symlinks) in symlink_map.items():
            ln_cmds = []
            # Write out to the makefile fragment.
            for name, engine in sorted(symlinks, key=lambda tup: tup[0]):
                # Mirror the special cases from upstream texlinks.sh.
                if name.startswith("cont-"):
                    continue
                if name == "pdfcsplain" and engine != "pdftex":
                    continue
                if name in ("mflua", "mf-nowin", "mf", "mptopdf"):
                    continue

                if name == engine:
                    continue

                ln_cmds.append("\t\tln -s %s %s" % (engine, name))

                # Ensure the file is included in the PLIST too.
                # But not for the buildset, as those will be included in the
                # texlive_base PLIST instead.
                if target_plist != TargetPlist.BUILDSET:
                    print("bin/%s %s" %
                          (name, TargetPlist.to_str(target_plist)))

            fh.write("%s:\n" % make_target)
            if len(ln_cmds) > 0:
                fh.write("\tcd ${PREFIX}/bin && \\\n")
                fh.write(" && \\\n".join(ln_cmds))
            else:
                fh.write("\ttrue")
            fh.write("\n\n")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        fatal(__doc__)

    plist_map, commented_files, symlink_map = \
        build_subset_file_lists(sys.argv[1])
    file_map = build_file_map(plist_map)
    walk_fake(file_map, commented_files)
    process_symlinks(symlink_map)
