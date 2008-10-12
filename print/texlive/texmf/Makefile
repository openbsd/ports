# $OpenBSD: Makefile,v 1.3 2008/10/12 22:00:36 steven Exp $

COMMENT-main =		texlive texmf for plain TeX only
COMMENT-tetex =		texlive texmf for laTeX/PdfTeX 
COMMENT-full =		texlive texmf for XeTeX/ConTeXt and extra macros
COMMENT-docs =		texlive documentation

DIST_V = 		20080822
DISTNAME =		texlive-${DIST_V}-texmf
PKGNAME =		texlive_texmf-${V}

PKGNAME-main = 		texlive_texmf-minimal-${V}
PKGNAME-tetex = 	texlive_texmf-tetex-${V}
PKGNAME-full = 		texlive_texmf-full-${V}
PKGNAME-docs =	 	texlive_texmf-docs-${V}

EXTRACT_SUFX = 		.tar.lzma
NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		::archivers/lzma
RUN_DEPENDS-tetex = 	:texlive_base-${V}:print/texlive/base
RUN_DEPENDS-full =	:texlive_texmf-tetex-${V}:print/texlive/texmf,-tetex
RUN_DEPENDS-docs = 	:texlive_base-${V}:print/texlive/base

MULTI_PACKAGES = 	-main -tetex -full -docs

# Could do with bsd.port.mk understanding lzma
# Also annoyingly loads of .orig files confuse update-patches
do-extract:
	cd ${WRKDIR} && \
	lzma -dc ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} | ${TAR} xf -

do-install:
	mv ${WRKDIST}/texmf ${PREFIX}/share
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share
	mv ${WRKDIST}/texmf-doc ${PREFIX}/share
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/*

post-install:
	mv ${PREFIX}/share/texmf/web2c/updmap.cfg \
		${PREFIX}/share/texmf/web2c/updmap.cfg-dist

.include <bsd.port.mk>
