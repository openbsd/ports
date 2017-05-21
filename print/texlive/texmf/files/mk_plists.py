#!/usr/bin/env python2.7
#
# This is how we generate the OpenBSD packing lists for TeX Live.
# It is hooked in to the plist target in the port makefile.

import re
import sys
from texscythe import config, subset, orm


PLIST_BUILDSET_OUT = "../pkg/PLIST-buildset"
PLIST_MAIN_OUT = "../pkg/PLIST-main"
PLIST_FULL_OUT = "../pkg/PLIST-full"
PLIST_DOCS_OUT = "../pkg/PLIST-docs"
PLIST_CONTEXT_OUT = "../pkg/PLIST-context"

YEAR = 2016
MAN_INFO_REGEX = "texmf-dist\/doc\/(man\/man[0-9]\/.*[0-9]|info\/.*\.info)$"

if len(sys.argv) != 2:
    print("Please specify a tlpdb file")
    sys.exit(1)

TLPDB = sys.argv[1]


class NastyError(Exception):
    pass


# Files from our pre-generated 'texmf-var' tarball.
# This will change from year to year.
TEXMF_VAR_FILES = [
    "share/texmf-var/",
    "share/texmf-var/fonts/",
    "share/texmf-var/fonts/map/",
    "share/texmf-var/fonts/map/dvips/",
    "share/texmf-var/fonts/map/dvips/updmap/",
    "share/texmf-var/fonts/map/dvips/updmap/download35.map",
    "share/texmf-var/fonts/map/dvips/updmap/builtin35.map",
    "share/texmf-var/fonts/map/dvips/updmap/psfonts_t1.map",
    "share/texmf-var/fonts/map/dvips/updmap/psfonts_pk.map",
    "share/texmf-var/fonts/map/dvips/updmap/ps2pk.map",
    "share/texmf-var/fonts/map/dvips/updmap/psfonts.map",
    "share/texmf-var/fonts/map/pdftex/",
    "share/texmf-var/fonts/map/pdftex/updmap/",
    "share/texmf-var/fonts/map/pdftex/updmap/pdftex_dl14.map",
    "share/texmf-var/fonts/map/pdftex/updmap/pdftex_ndl14.map",
    "share/texmf-var/fonts/map/pdftex/updmap/pdftex.map",
    "share/texmf-var/fonts/map/dvipdfmx/",
    "share/texmf-var/fonts/map/dvipdfmx/updmap/",
    "share/texmf-var/fonts/map/dvipdfmx/updmap/kanjix.map",
    "share/texmf-var/web2c/",
    "share/texmf-var/web2c/ptex/",
    "share/texmf-var/web2c/ptex/ptex.fmt",
    "share/texmf-var/web2c/eptex/",
    "share/texmf-var/web2c/eptex/eptex.fmt",
    "share/texmf-var/web2c/eptex/platex.fmt",
    "share/texmf-var/web2c/tex/",
    "share/texmf-var/web2c/tex/tex.fmt",
    "share/texmf-var/web2c/tex/lollipop.fmt",
    "share/texmf-var/web2c/euptex/",
    "share/texmf-var/web2c/euptex/euptex.fmt",
    "share/texmf-var/web2c/euptex/uplatex.fmt",
    "share/texmf-var/web2c/xetex/",
    "share/texmf-var/web2c/xetex/xetex.fmt",
    "share/texmf-var/web2c/xetex/xelatex.fmt",
    "share/texmf-var/web2c/xetex/pdfcsplain.fmt",
    "share/texmf-var/web2c/xetex/cont-en.fmt",
    "share/texmf-var/web2c/luatex/",
    "share/texmf-var/web2c/luatex/luatex.fmt",
    "share/texmf-var/web2c/luatex/pdfcsplain.fmt",
    "share/texmf-var/web2c/luatex/lualatex.fmt",
    "share/texmf-var/web2c/luatex/dviluatex.fmt",
    "share/texmf-var/web2c/luatex/dvilualatex.fmt",
    "share/texmf-var/web2c/pdftex/",
    "share/texmf-var/web2c/pdftex/pdftex.fmt",
    "share/texmf-var/web2c/pdftex/amstex.fmt",
    "share/texmf-var/web2c/pdftex/mex.fmt",
    "share/texmf-var/web2c/pdftex/pdfxmltex.fmt",
    "share/texmf-var/web2c/pdftex/utf8mex.fmt",
    "share/texmf-var/web2c/pdftex/etex.fmt",
    "share/texmf-var/web2c/pdftex/texsis.fmt",
    "share/texmf-var/web2c/pdftex/pdfmex.fmt",
    "share/texmf-var/web2c/pdftex/pdfcslatex.fmt",
    "share/texmf-var/web2c/pdftex/csplain.fmt",
    "share/texmf-var/web2c/pdftex/pdfetex.fmt",
    "share/texmf-var/web2c/pdftex/pdfcsplain.fmt",
    "share/texmf-var/web2c/pdftex/mllatex.fmt",
    "share/texmf-var/web2c/pdftex/latex.fmt",
    "share/texmf-var/web2c/pdftex/xmltex.fmt",
    "share/texmf-var/web2c/pdftex/jadetex.fmt",
    "share/texmf-var/web2c/pdftex/pdfjadetex.fmt",
    "share/texmf-var/web2c/pdftex/cslatex.fmt",
    "share/texmf-var/web2c/pdftex/mltex.fmt",
    "share/texmf-var/web2c/pdftex/pdflatex.fmt",
    "share/texmf-var/web2c/pdftex/cont-en.fmt",
    "share/texmf-var/web2c/pdftex/mptopdf.fmt",
    "share/texmf-var/web2c/pdftex/eplain.fmt",
    "share/texmf-var/web2c/aleph/",
    "share/texmf-var/web2c/aleph/aleph.fmt",
    "share/texmf-var/web2c/aleph/lamed.fmt",
    "share/texmf-var/web2c/uptex/",
    "share/texmf-var/web2c/uptex/uptex.fmt",
    "share/texmf-var/web2c/metafont/",
    "share/texmf-var/web2c/metafont/mf.base",
    "share/texmf-var/luatex-cache/",
    "share/texmf-var/luatex-cache/context/",
    "share/texmf-var/luatex-cache/context/0399a8df3aef8d154781d0a9c2b8e28d/",
    "share/texmf-var/luatex-cache/context/0399a8df3aef8d154781d0a9c2b8e28d/formats/",
    "share/texmf-var/luatex-cache/context/0399a8df3aef8d154781d0a9c2b8e28d/formats/luatex/",
    "share/texmf-var/luatex-cache/context/0399a8df3aef8d154781d0a9c2b8e28d/formats/luatex/cont-en.luv",
    "share/texmf-var/luatex-cache/context/0399a8df3aef8d154781d0a9c2b8e28d/formats/luatex/cont-en.lui",
    "share/texmf-var/luatex-cache/context/0399a8df3aef8d154781d0a9c2b8e28d/formats/luatex/cont-en.fmt",
    "share/texmf-var/luatex-cache/context/0399a8df3aef8d154781d0a9c2b8e28d/formats/luatex/cont-nl.luv",
    "share/texmf-var/luatex-cache/context/0399a8df3aef8d154781d0a9c2b8e28d/formats/luatex/cont-nl.lui",
    "share/texmf-var/luatex-cache/context/0399a8df3aef8d154781d0a9c2b8e28d/formats/luatex/cont-nl.fmt",
]

CONFLICT_FILES = [
    # Comes from print/ps2eps.
    # ps2eps is included in a larger texlive package called pstools, so it
    # cannot be excluded by package. We disable this in the base build at
    # configure time.
    "@man man/man1/bbox.1",
    "@man man/man1/disdvi.1",
    # We have a psutils port, but tex live's version includes some other
    # stuff (perl scripts). Best package those up.
    # a bunch of perl scripts.
    "@man man/man1/epsffit.1",
    "@man man/man1/extractres.1",
    "@man man/man1/psutils.1",
    "@man man/man1/psjoin.1",
    "@man man/man1/includeres.1",
    "@man man/man1/ps2eps.1",
    "@man man/man1/psbook.1",
    "@man man/man1/psnup.1",
    "@man man/man1/psresize.1",
    "@man man/man1/psselect.1",
    "@man man/man1/pstops.1",
]

# Files that are missing due to a bug in the tlpdb
BUG_MISSING_FILES = []

# Don't need to add dir entries for these
# Note these must not be slash suffixed
EXISTING_DIRS = ["share", "info", "man"] + \
    ["man/man%d" % i for i in range(1, 9)] + ["man3f", "man3p"]


def add_dir_entries(files):
    print("Adding dirs...")
    nfiles = []
    for f in files:
        nfiles.append(f)

        # special handling of manuals and info
        if f.startswith("@man") or f.startswith("@info"):
            elems = f.split()
            assert len(elems) == 2
            f = elems[1]

        dirs = subset.dir_entries(f, EXISTING_DIRS)
        nfiles += dirs
    return sorted(set(nfiles))  # set deduplicates


def remove_if_in_list(el, ls):
    if el in ls:
        ls.remove(el)


def relocate_mans_and_infos(filelist):
    filelist = filelist[:]
    remove_if_in_list("share/texmf-dist/doc/info/dir", filelist)
    return [re.sub("^share/texmf-dist/doc/(man|info)/", "@\g<1> \g<1>/", i)
            for i in filelist]


def filter_junk(filelist):
    r = [x for x in filelist if
         # Windows junk
         not re.match(".*\.([Ee][Xx][Ee]|[Bb][Aa][Tt])$", x) and
         # no win32 stuff, but should probably keep win32 images in tl docs.
         not ("win32" in x and "doc/texlive" not in x) and
         ("mswin" not in x) and
         # Context source code -- seriously?
         not re.match("^share/texmf-dist/scripts/context/stubs/source/", x) and
         # PDF manuals
         not re.match("^.*.man[0-9]\.pdf$", x) and
         # We don't want anything that isn't in the texmf tree.
         # Most of this is installer stuff which does not apply
         # to us.
         (x.startswith("share/texmf") or x.startswith("@")) and
         # TeXmf bugs
         x not in BUG_MISSING_FILES and
         # Stuff provided by other ports
         x not in CONFLICT_FILES
         ]
    return r


def collect_files(specs, regex=None):
    cfg = config.Config(
        TLPDB,
        inc_pkgspecs=specs,
        plist=None,  # return file list
        prefix_filenames="share/",
        dirs=False,  # Do this manually as we will filter the list
        regex=regex,
    )
    sess = orm.init_orm(cfg)
    files = subset.compute_subset(cfg, sess)
    sess.close()
    files = relocate_mans_and_infos(files)
    files = filter_junk(files)
    return sorted(files)


def manspecs(pkglist):
    return ["%s:doc:%s" % (pkg, MAN_INFO_REGEX) for pkg in pkglist]


def runspecs(pkglist):
    return ["%s:run" % pkg for pkg in pkglist]


def writelines(fh, lines):
    for i in lines:
        fh.write(i + "\n")


def list_subtract(l, rm):
    return list(set(l).difference(set(rm)))


def write_plist(files, filename, top_matter=[], bottom_matter=[]):
    files = add_dir_entries(files)
    with open(filename, "w") as fh:
        writelines(fh, top_matter)
        writelines(fh, files)
        writelines(fh, bottom_matter)


# /-------------------------------------
# | NEVERSET
# +-------------------------------------
# | Packages we never want
# \-------------------------------------


# Stuff which is ported separately from texlive in OpenBSD
print(">>> neverset")
never_pkgs = ["asymptote", "latexmk", "texworks", "t1utils",
              "dvi2tty", "detex", "texinfo"]
never_files = collect_files(never_pkgs)


# /-------------------------------------
# | BUILDSET
# +-------------------------------------
# | A minimal subset for building ports.
# \-------------------------------------
buildset_pkgs = [
    # Barebones of a working latex system
    "scheme-basic",
    # textproc/dblatex
    "anysize", "appendix", "changebar",
    "fancyvrb", "float", "footmisc",
    "jknapltx", "multirow", "overpic",
    "rotating", "stmaryrd", "subfigure",
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
    "comment", "xcolor",
    # math/R
    "inconsolata",
    ]

print(">>> texlive_texmf-buildset")
buildset_specs = runspecs(buildset_pkgs)  # note, no manuals
buildset_top_matter = [
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
    "share/texmf-local",
]
buildset_bottom_matter = [
    "@exec-update if [ -e \"%D/bin/mktexlsr\" ]; " +
    "then %D/bin/mktexlsr > /dev/null 2>&1; fi"
]
buildset_files = list_subtract(collect_files(buildset_specs), never_files)
buildset_files = sorted(buildset_files + TEXMF_VAR_FILES)
write_plist(buildset_files,
            PLIST_BUILDSET_OUT,
            buildset_top_matter,
            buildset_bottom_matter)
print("\n\n")

# /-------------------------------------
# | CONTEXT
# +-------------------------------------
# | Guess what?
# \-------------------------------------

# Get this list from the collection-context pkg.
# DO NOT INCLUDE DEPENDENCIES THAT WOULD APPEAR
# IN OTHER SUBSETS, E.g. 'collection-basic'. Generally
# you want all the depends that are prefixed "context-"
# and "context". Note the use of ! to not follow deps.
# This prevents us pulling in pdftex, xetex, ... again.
context_pkgs = [
    "!context",
    "!context-account",
    "!context-algorithmic",
    "!context-animation",
    "!context-annotation",
    "!context-bnf",
    "!context-chromato",
    "!context-construction-plan",
    "!context-cyrillicnumbers",
    "!context-degrade",
    "!context-fancybreak",
    "!context-filter",
    "!context-fixme",
    "!context-french",
    "!context-fullpage",
    "!context-games",
    "!context-gantt",
    "!context-gnuplot",
    "!context-letter",
    "!context-lettrine",
    "!context-lilypond",
    "!context-mathsets",
    "!context-notes-zh-cn",
    "!context-rst",
    "!context-ruby",
    "!context-simplefonts",
    "!context-simpleslides",
    "!context-title",
    "!context-transliterator",
    "!context-typearea",
    "!context-typescripts",
    "!context-vim",
    "!context-visualcounter",
]

print(">>> PLIST-context")
context_top_matter = [
    "@comment $" "OpenBSD$",
    "@conflict teTeX_texmf-*",
    "@conflict texlive_base-<%s" % YEAR,
    "@conflict texlive_texmf-docs-<%s" % YEAR,
    "@conflict texlive_texmf-full-<%s" % YEAR,
    "@conflict texlive_texmf-buildset-<%s" % YEAR,
    "@conflict texlive_texmf-minimal-<%s" % YEAR,
]
context_bottom_matter = [
    "@unexec rm -Rf %D/share/texmf-var/luatex-cache/trees",
    "@exec %D/bin/mtxrun --generate > /dev/null 2>&1",
    "@exec %D/bin/mktexlsr > /dev/null 2>&1",
    "@unexec-delete %D/bin/mktexlsr > /dev/null 2>&1",
]
context_specs = runspecs(context_pkgs) + manspecs(context_pkgs)
context_files = list_subtract(collect_files(context_specs), never_files)
write_plist(context_files, PLIST_CONTEXT_OUT,
            context_top_matter, context_bottom_matter)
print("\n\n")

# /----------------------------------------------------------
# | MINIMAL
# +----------------------------------------------------------
# | Scheme-tetex minus anything we installed in the buildset
# | (also no context)
# \----------------------------------------------------------

print(">>> texlive_texmf-minimal")
minimal_pkgs = ["scheme-tetex"]
minimal_top_matter = [
    "@comment $" "OpenBSD$",
    "@conflict teTeX_texmf-*",
    "@conflict texlive_base-<%s" % YEAR,
    "@conflict texlive_texmf-docs-<%s" % YEAR,
    "@conflict texlive_texmf-full-<%s" % YEAR,
    "@conflict texlive_texmf-buildset-<%s" % YEAR,
    "@conflict texlive_texmf-context-<%s" % YEAR,
    "@pkgpath print/teTeX/texmf",
]
minimal_bottom_matter = [
    "@exec %D/bin/mktexlsr > /dev/null 2>&1",
    "@unexec-delete %D/bin/mktexlsr > /dev/null 2>&1",
]
minimal_specs = runspecs(minimal_pkgs) + \
    manspecs(minimal_pkgs) + \
    manspecs(buildset_pkgs)  # carry forward buildset manuals
minimal_files = list_subtract(collect_files(minimal_specs),
                              buildset_files + context_files + never_files)
write_plist(minimal_files, PLIST_MAIN_OUT,
            minimal_top_matter, minimal_bottom_matter)
print("\n\n")

# /----------------------------------------------------------
# | FULL
# +----------------------------------------------------------
# | Everything bar docs (other than relevant manuals)
# \----------------------------------------------------------

print(">>> texlive_texmf-full")
full_pkgs = ["scheme-full"]
full_top_matter = [
    "@comment $" "OpenBSD$",
    "@conflict teTeX_texmf-*",
    "@conflict texlive_base-<%s" % YEAR,
    "@conflict texlive_texmf-docs-<%s" % YEAR,
    "@conflict texlive_texmf-minimal-<%s" % YEAR,
    "@conflict texlive_texmf-buildset-<%s" % YEAR,
    "@conflict texlive_texmf-context-<%s" % YEAR,
    "@pkgpath print/texlive/texmf-full",
    "@pkgpath print/teTeX/texmf",
]
full_bottom_matter = [
    "@exec %D/bin/mktexlsr > /dev/null 2>&1",
    "@unexec-delete %D/bin/mktexlsr > /dev/null 2>&1",
]
full_specs = runspecs(full_pkgs) + manspecs(full_pkgs)
full_files = list_subtract(
    collect_files(full_specs),
    minimal_files + buildset_files + context_files + never_files)
write_plist(full_files, PLIST_FULL_OUT,
            full_top_matter, full_bottom_matter)
print("\n\n")

# /----------------------------------------------------------
# | DOCS
# +----------------------------------------------------------
# | Docs for TeX packages in -buildset and -minimal only.
# \----------------------------------------------------------

# exclude manuals and info files
NO_MAN_INFO_PDFMAN_REGEX = \
    "(?!texmf-dist\/doc\/(man\/man[0-9]\/.*[0-9]|info\/.*\.info)$)"

print(">>> texlive_texmf-docs")
doc_specs = ["scheme-tetex:doc"]
doc_top_matter = [
    "@comment $" "OpenBSD$",
    "@conflict teTeX_texmf-doc-*",
    "@conflict texlive_base-<%s" % YEAR,
    "@conflict texlive_texmf-minimal-<%s" % YEAR,
    "@conflict texlive_texmf-full-<%s" % YEAR,
    "@conflict texlive_texmf-buildset-<%s" % YEAR,
    "@conflict texlive_texmf-context-<%s" % YEAR,
    "@pkgpath print/texlive/texmf-docs",
    "@pkgpath print/teTeX_texmf,-doc",
]
doc_bottom_matter = [
    "@exec %D/bin/mktexlsr > /dev/null 2>&1",
    "@unexec-delete %D/bin/mktexlsr > /dev/null 2>&1",
]
doc_files = list_subtract(
    collect_files(doc_specs, NO_MAN_INFO_PDFMAN_REGEX), never_files)
write_plist(doc_files, "../pkg/PLIST-docs", doc_top_matter, doc_bottom_matter)
print("\n\n")

# /----------------------------------------------------------
# | SANITY CHECKING
# \----------------------------------------------------------

print(">>> sanity check")


# Check there is no overlap in any of the above lists
def read_plist_back(filename):
    with open(filename, "r") as f:
        set1 = set([x.strip() for x in f.readlines()
                    if (not x.endswith("/\n")) and (not x.startswith("@"))])
    return set1


def check_no_overlap(list1, list2):
    print("Checking no overlap between %s and %s" % (list1, list2))

    set1 = read_plist_back(list1)
    set2 = read_plist_back(list2)

    diff = set1.intersection(set2)
    if diff:
        raise NastyError("Overlapping packing lists:\n%s" % diff)


# check each PLIST against each other for overlap
all_plists = (PLIST_BUILDSET_OUT, PLIST_MAIN_OUT, PLIST_FULL_OUT,
              PLIST_DOCS_OUT, PLIST_CONTEXT_OUT)
for (l1, l2) in [(x, y) for x in all_plists for y in all_plists if x < y]:
    check_no_overlap(l1, l2)

print("OK!")
