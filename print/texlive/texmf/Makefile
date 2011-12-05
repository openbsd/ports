# $OpenBSD: Makefile,v 1.24 2011/12/05 23:22:39 sthen Exp $

COMMENT-main =		texlive texmf for laTeX/PdfTeX
COMMENT-full =		texlive texmf for XeTeX/ConTeXt and extra macros
COMMENT-docs =		texlive documentation

DISTNAME =		texlive-${DIST_V}-texmf
MASTER_SITES0 =		http://spacehopper.org/mirrors/ \
			http://theunixzoo.co.uk/distfiles/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texmf-var-pregen-2011${EXTRACT_SUFX}:0

PKGNAME-main =		texlive_texmf-minimal-${V}
PKGNAME-full =		texlive_texmf-full-${V}
PKGNAME-docs =		texlive_texmf-docs-${V}
REVISION-main =		0

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
RUN_DEPENDS-full +=	lang/python/${MODPY_VERSION} \
			lang/ruby/${MODRUBY_REV}

RUN_DEPENDS-docs =	texlive_base-${V}:print/texlive/base \
			x11/p5-Tk

MULTI_PACKAGES =	-main -full -docs

SUBST_VARS +=		LOCALBASE

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

post-install:
	${SUBST_CMD} ${PREFIX}/share/texmf/web2c/texmf.cnf

.include <bsd.port.mk>
