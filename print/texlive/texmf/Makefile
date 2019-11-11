# $OpenBSD: Makefile,v 1.58 2019/11/11 22:54:15 edd Exp $

COMMENT-context =	texlive texmf for conTeXt
COMMENT-docs =		texlive documentation
COMMENT-full =		texlive texmf for extra macros
COMMENT-main =		texlive texmf for basic functionality
COMMENT-buildset =	smallest texlive texmf for building ports

# If you move things out of another texmf into the buildset, don't forget to:
#   * Update the buildset conflict markers in PLIST-buildset.
#   * Add a more restrictive RUN_DEPEND upon the buildset.

DISTNAME =		texlive-${DIST_V}-texmf
MASTER_SITES0 =		https://spacehopper.org/mirrors/ \
			http://theunixzoo.co.uk/distfiles/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texlive-${DIST_V}-extra${EXTRACT_SUFX} \
			texlive-${DIST_V}-tlpdb-full.tar.gz \
			texmf-var-pregen-${V}.0${EXTRACT_SUFX}:0 \

PKGNAME-main =		texlive_texmf-minimal-${V}
PKGNAME-full =		texlive_texmf-full-${V}
PKGNAME-docs =		texlive_texmf-docs-${V}
PKGNAME-context =	texlive_texmf-context-${V}
PKGNAME-buildset =	texlive_texmf-buildset-${V}

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		archivers/xz

# We dont use auto module deps for these, as MODULES is not per SUBPACKAGE
.include "adj.mk"
MODULES +=		lang/ruby lang/python
MODRUBY_REV =		1.8
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

RUN_DEPENDS-main +=	texlive_base->=${V}:print/texlive/base,-main \
			${FULLPKGNAME-buildset}:print/texlive/texmf,-buildset
RUN_DEPENDS-full =	${FULLPKGNAME-main}:print/texlive/texmf,-main \
			${MODPY_RUN_DEPENDS} \
			${_MODLUA_RUNDEPENDS}
RUN_DEPENDS-context +=	${FULLPKGNAME-full}:print/texlive/texmf,-full \
			${MODRUBY_RUNDEPENDS}
RUN_DEPENDS-docs +=	texlive_base->=${V}:print/texlive/base,-main \
			x11/p5-Tk
RUN_DEPENDS-buildset +=	texlive_mktexlsr->=${V}:print/texlive/base,-mktexlsr

MULTI_PACKAGES =	-context -docs -full -main -buildset

MODULES +=		lang/lua lang/ruby lang/python x11/tk perl
MODLUA_RUNDEP =		No
MODLUA_BUILDDEP =	No
MODRUBY_REV =		1.8
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

SUBST_VARS +=		RUBY

WRKDIST =		${WRKDIR}/texlive-${DIST_V}-texmf

# Substitute correct interpreter paths into scripts and deal with linked manuals.
# Some interpreter paths are done automatically by MODULES.
.include "manpage_symlinks.mk"
pre-configure: tl-manpage-symlinks
	@# Don't use substitution from the Python port, since we need to swap in
	@# different versions.
	for F in ${PYTHON2_ADJ_FILES}; do \
	    perl -pi \
	    -e '$$. == 1 && s|^.*env python[0-9.]*([\s].*)?$$|\#!${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_2}$$1|;' \
	    -e '$$. == 1 && s|^.*python[0-9.]*([\s].*)?$$|\#!${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_2}$$1|;' \
	    -e 'close ARGV if eof;' ${WRKSRC}/$$F; \
	done
	for F in ${PYTHON3_ADJ_FILES}; do \
	    perl -pi \
	    -e '$$. == 1 && s|^.*env python[0-9.]*([\s].*)?$$|\#!${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_3}$$1|;' \
	    -e '$$. == 1 && s|^.*python[0-9.]*([\s].*)?$$|\#!${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_3}$$1|;' \
	    -e 'close ARGV if eof;' ${WRKSRC}/$$F; \
	done
	@# Don't use ${MODRUBY_ADJ_FILES} as ruby.port.mk uses find(1) which
	@# takes an age on such a large directory.
	cd ${WRKSRC} && for F in ${RUBY_ADJ_FILES}; do \
		${MODRUBY_RUBY_ADJ} $$F; \
	done
	for F in ${WISH_ADJ_FILES}; do \
	    ${MODTCL_WISH_ADJ} ${WRKSRC}/$$F; \
	done
	for F in ${TEXLUA_ADJ_FILES}; do \
	    perl -pi \
	    -e '$$. == 1 && s|^.*env texlua([\s].*)?$$|\#!${LOCALBASE}/bin/texlua$$1|;' \
	    -e '$$. == 1 && s|^.*texlua([\s].*)?$$|\#!${LOCALBASE}/bin/texlua$$1|;' \
	    -e 'close ARGV if eof;' ${WRKSRC}/$$F; \
	done
	for F in ${LUA_ADJ_FILES}; do \
	    perl -pi \
	    -e '$$. == 1 && s|^.*env lua([\s].*)?$$|\#!${LOCALBASE}/bin/lua$$1|;' \
	    -e '$$. == 1 && s|^.*lua([\s].*)?$$|\#!${LOCALBASE}/bin/lua$$1|;' \
	    -e 'close ARGV if eof;' ${WRKSRC}/$$F; \
	done
	for F in ${BASH_ADJ_FILES}; do \
	    perl -pi \
	    -e '$$. == 1 && s|^.*env bash([\s].*)?$$|\#!${LOCALBASE}/bin/bash$$1|;' \
	    -e '$$. == 1 && s|^.*bash([\s].*)?$$|\#!${LOCALBASE}/bin/bash$$1|;' \
	    -e 'close ARGV if eof;' ${WRKSRC}/$$F; \
	done
	for F in ${FONTFORGE_ADJ_FILES}; do \
	    perl -pi \
	    -e '$$. == 1 && s|^.*env fontforge([\s].*)?$$|\#!${LOCALBASE}/bin/fontforge$$1|;' \
	    -e '$$. == 1 && s|^.*fontforge([\s].*)?$$|\#!${LOCALBASE}/bin/fontforge$$1|;' \
	    -e 'close ARGV if eof;' ${WRKSRC}/$$F; \
	done

	# This file contains a lookup table of interpreter paths
	${SUBST_CMD} ${WRKSRC}/texmf-dist/scripts/context/stubs/unix/mtxrun

.include "symlinks.mk"
do-install: tl-symlinks-main tl-symlinks-full tl-symlinks-context
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share

	# plug in my pregenerated map and formats
	#
	# To make these, first check you are all hashed (all commands as root):
	#   mktexlsr
	#   mtxrun --generate
	#
	# Then create the necessary files with:
	#   updmap-sys
	#   fmtutil-sys --all
	#   context --make
	#
	# Then you can tar them up and host them as the pregen tarball.
	mv ${WRKDIR}/texmf-var ${PREFIX}/share

	# Put manuals in the right place.
	#
	# The rest of share/texmf-dist/doc/man does not appear
	# in the packing list, so the PDF versions will not be installed.
	#
	# I am told by upstream that any manual page not under
	# texmf-dist/doc/man is intentionally this way and should not be
	# moved into the system manual path. So be it.
	mv ${PREFIX}/share/texmf-dist/doc/man/man1/*.1 ${PREFIX}/man/man1/
	mv ${PREFIX}/share/texmf-dist/doc/man/man5/*.5 ${PREFIX}/man/man5/

	# Info pages
	mv ${PREFIX}/share/texmf-dist/doc/info/*.info \
		${PREFIX}/info/

	# adjust permissions
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/{share/texmf*,man/man*/*,info/*}

# selfauto does not work with our legacy texmf paths, patch in paths.
post-install:
	${SUBST_CMD} ${PREFIX}/share/texmf-dist/web2c/texmf.cnf
	${SUBST_CMD} ${PREFIX}/share/texmf-dist/web2c/texmfcnf.lua

# Generating PLISTs is special for TeX Live.
# This target requires Python3.
update-plist: plist
plist: fake
	env WRKINST=${WRKINST} TRUEPREFIX=${TRUEPREFIX} python${MODPY_DEFAULT_VERSION_3} \
		${FILESDIR}/update_plist_hints.py \
		${WRKDIR}/texlive.tlpdb | \
		${FILESDIR}/write_plists.py

# regenerate adj.mk
adj: patch
	python${MODPY_DEFAULT_VERSION_3} ${FILESDIR}/mk_adj.py \
		${WRKSRC}/texmf-dist ${WRKSRC} > adj.mk

.include <bsd.port.mk>
