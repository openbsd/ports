# $OpenBSD: Makefile,v 1.30 2012/08/07 15:15:09 edd Exp $

COMMENT-context =	texlive texmf for conTeXt
COMMENT-docs =		texlive documentation
COMMENT-full =		texlive texmf for extra macros
COMMENT-main =		texlive texmf for basic functionality

DISTNAME =		texlive-${DIST_V}-texmf
MASTER_SITES0 =		http://spacehopper.org/mirrors/ \
			http://theunixzoo.co.uk/distfiles/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texmf-var-pregen-2011${EXTRACT_SUFX}:0

PKGNAME-main =		texlive_texmf-minimal-${V}
PKGNAME-full =		texlive_texmf-full-${V}
PKGNAME-docs =		texlive_texmf-docs-${V}
PKGNAME-context =	texlive_texmf-context-${V}

REVISION-docs =		2
REVISION-full =		1
REVISION-main =		4
REVISION-context =	1

NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		archivers/xz
RUN_DEPENDS-full =	texlive_texmf-minimal-${V}:print/texlive/texmf,-main \
			texlive_base-${V}:print/texlive/base
# We dont use auto module deps for these, as MODULES is not per SUBPACKAGE
MODULES +=		lang/ruby lang/python
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
RUN_DEPENDS-full +=	lang/python/${MODPY_VERSION}

RUN_DEPENDS-context +=	texlive_base-${V}:print/texlive/base \
			lang/ruby/${MODRUBY_REV}
RUN_DEPENDS-docs +=	texlive_base-${V}:print/texlive/base \
			x11/p5-Tk

MULTI_PACKAGES =	-context -docs -full -main

do-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKDIST}
	# manuals in the right place
	mv ${WRKDIST}/texmf/doc/man/man1/*.1 ${PREFIX}/man/man1/
	mv ${WRKDIST}/texmf/doc/man/man5/*.5 ${PREFIX}/man/man5/
	
	# they really are scattered all over the place
	for i in texmf-dist/doc/context/scripts/perl/texshow.1 \
		texmf-dist/doc/latex/changebar/chbar.1 \
		texmf-dist/doc/latex/eepic/fig2eepic/fig2epic.1 \
		texmf-dist/doc/latex/mathspic/mathspic.1 \
		texmf-dist/doc/latex/vxu/vxusymbol.1 \
		texmf-dist/doc/otherformats/jadetex/base/jadetex.1 \
		texmf-dist/doc/otherformats/jadetex/base/pdfjadetex.1 \
		texmf-dist/doc/otherformats/texsis/base/texsis.1 \
		texmf-dist/scripts/musixtex/doc/musixflx.1 \
		texmf-dist/scripts/musixtex/doc/musixtex.1; do \
		mv ${WRKDIST}/$$i ${PREFIX}/man/man1/; done

	# The rest goes in share/texmf*
	mv ${WRKDIST}/texmf ${PREFIX}/share
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share
	# Some perl mods needed for updmap, but not included, silly
	${INSTALL} -d ${PREFIX}/libdata/perl5/site_perl/TeXLive/
	${INSTALL} ${FILESDIR}/TLUtils.pm \
		${PREFIX}/libdata/perl5/site_perl/TeXLive/
	${INSTALL} ${FILESDIR}/TLConfig.pm \
		${PREFIX}/libdata/perl5/site_perl/TeXLive/
# plug in my pregenerated map and formats
	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKDIR}/texmf-var
	mv ${WRKDIR}/texmf-var ${PREFIX}/share

# selfauto does not work with our legacy texmf paths, patch in paths.
post-install:
	${SUBST_CMD} ${PREFIX}/share/texmf/web2c/texmf.cnf
	${SUBST_CMD} ${PREFIX}/share/texmf/web2c/texmfcnf.lua

.include <bsd.port.mk>
