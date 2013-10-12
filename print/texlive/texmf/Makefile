# $OpenBSD: Makefile,v 1.35 2013/10/12 10:23:25 sthen Exp $

COMMENT-context =	texlive texmf for conTeXt
COMMENT-docs =		texlive documentation
COMMENT-full =		texlive texmf for extra macros
COMMENT-main =		texlive texmf for basic functionality

DISTNAME =		texlive-${DIST_V}-texmf
#MASTER_SITES0 =	http://spacehopper.org/mirrors/ \
#			http://theunixzoo.co.uk/distfiles/
MASTER_SITES0 =		http://theunixzoo.co.uk/distfiles/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texlive-${DIST_V}-extra${EXTRACT_SUFX} \
			texmf-var-pregen-${V}${EXTRACT_SUFX}:0
REVISION-main =		1

PKGNAME-main =		texlive_texmf-minimal-${V}
PKGNAME-full =		texlive_texmf-full-${V}
PKGNAME-docs =		texlive_texmf-docs-${V}
PKGNAME-context =	texlive_texmf-context-${V}

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		archivers/xz
RUN_DEPENDS-full =	texlive_texmf-minimal-${V}:print/texlive/texmf,-main \
			texlive_base-${V}:print/texlive/base
# We dont use auto module deps for these, as MODULES is not per SUBPACKAGE
MODULES +=		lang/ruby lang/python
MODRUBY_REV =		1.8
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
RUN_DEPENDS-full +=	lang/python/${MODPY_VERSION}

RUN_DEPENDS-context +=	texlive_base-${V}:print/texlive/base \
			lang/ruby/${MODRUBY_REV}
RUN_DEPENDS-context +=	lang/ruby/${MODRUBY_REV}
RUN_DEPENDS-docs +=	texlive_base-${V}:print/texlive/base \
			x11/p5-Tk
RUN_DEPENDS-docs +=	x11/p5-Tk

MULTI_PACKAGES =	-context -docs -full -main

# Files which are named *.[1-9] which are not manuals. This list
# is shorter than the list of files which *are* manuals scattered
# all over the texmf.
# The BEGIN/END ensure that each real entry has a space either side
# of it. Grep uses this to ensure we don't accidentally pick up
# a path which is a subset of one of the following:
NOT_A_MANUAL = BEGIN \
	${PREFIX}/share/texmf-dist/tex/latex/tabvar/tabvar.1 \
	${PREFIX}/share/texmf-dist/tex/latex/tabvar/tabvar.2 \
	${PREFIX}/share/texmf-dist/tex/latex/tabvar/tabvar.3 \
	${PREFIX}/share/texmf-dist/doc/metapost/base/source-manual/figs.1 \
	${PREFIX}/share/texmf-dist/doc/latex/feynmf/manpics.1 \
	${PREFIX}/share/texmf-dist/doc/pdftex/manual/samplepdf/samplepdf.1 \
	${PREFIX}/share/texmf-dist/doc/latex/tablor/Figures/tablor_Tab.1 \
	${PREFIX}/share/texmf-dist/doc/latex/tablor/Figures/tablor_Tab.2 \
	${PREFIX}/share/texmf-dist/doc/latex/tablor/Figures/tablor_Tab.3 \
	${PREFIX}/share/texmf-dist/doc/latex/tablor/Figures/tablor_Tab.4 \
	${PREFIX}/share/texmf-dist/doc/latex/tablor/Figures/tablor_Tab.5 \
	${PREFIX}/share/texmf-dist/doc/latex/tablor/Figures/tablor_Tab.6 \
	${PREFIX}/share/texmf-dist/doc/latex/tablor/Figures/tablor_Tab.7 \
	${PREFIX}/share/texmf-dist/doc/latex/tablor/Figures/tablor_Tab.8 \
	${PREFIX}/share/texmf-dist/doc/latex/tablor/Figures/tablor_Tab.9 \
	${PREFIX}/share/texmf-dist/doc/latex/flashmovie/flv-player-license/MPL-1.1 \
	${PREFIX}/share/texmf-dist/doc/fonts/wasy/wasyfont.2 \
	${PREFIX}/share/texmf-dist/doc/latex/acmconf/THIS-IS-VERSION-1.3 \
	${PREFIX}/share/texmf-dist/doc/latex/rcsinfo/README-1.9 \
	${PREFIX}/share/texmf-dist/doc/pdftex/Announcement-1.40.2 \
	${PREFIX}/share/texmf-dist/source/latex/koma-script/ChangeLog.2 \
	${PREFIX}/share/texmf-dist/doc/latex/feynmf/manpics.2 \
	${PREFIX}/share/texmf-dist/doc/latex/feynmf/manpics.3 \
	${PREFIX}/share/texmf-dist/doc/latex/webguide/expeg.6 \
	END

do-install:

	# The rest goes in share/texmf*
	mv ${WRKDIST}/texmf ${PREFIX}/share
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share

	# Collect all the manual pages that are *everywhere* for
	# some reason. I wanted to use file(1) to detect if files
	# are manual pages, but it gets it wrong (sigh).
	for i in `find  ${PREFIX} -type f | grep -e '.*\.[1-9]$$'`; do \
		if [ "`echo ${NOT_A_MANUAL} | grep -e \" $$i "`" = "" ]; then \
			mv $$i ${PREFIX}/man/man$${i#$${i%?}}/ ; \
		fi \
	done

	# plug in my pregenerated map and formats
	mv ${WRKDIR}/texmf-var ${PREFIX}/share

	# adjust permissions
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/{share/texmf*,man/man*/*}

# selfauto does not work with our legacy texmf paths, patch in paths.
post-install:
	${SUBST_CMD} ${PREFIX}/share/texmf/web2c/texmf.cnf
	${SUBST_CMD} ${PREFIX}/share/texmf/web2c/texmfcnf.lua

.include <bsd.port.mk>
