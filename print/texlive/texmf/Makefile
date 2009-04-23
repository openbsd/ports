# $OpenBSD: Makefile,v 1.6 2009/04/23 00:18:18 sthen Exp $

COMMENT-main =		texlive texmf for laTeX/PdfTeX 
COMMENT-full =		texlive texmf for XeTeX/ConTeXt and extra macros
COMMENT-docs =		texlive documentation

DIST_V = 		20080822
DISTNAME =		texlive-${DIST_V}-texmf
PKGNAME =		texlive_texmf-${V}

PKGNAME-main = 		texlive_texmf-minimal-${V}p1
PKGNAME-full = 		texlive_texmf-full-${V}p2
PKGNAME-docs =	 	texlive_texmf-docs-${V}p1

EXTRACT_SUFX = 		.tar.lzma
NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		::archivers/lzma
RUN_DEPENDS-full =	:texlive_texmf-minimal-${V}:print/texlive/texmf,-main \
			:texlive_base-${V}:print/texlive/base
RUN_DEPENDS-docs = 	:texlive_base-${V}:print/texlive/base

MULTI_PACKAGES = 	-main -full -docs

# Could do with bsd.port.mk understanding lzma
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
	${INSTALL_DATA} ${FILESDIR}/fmtutil.cnf-full \
		${PREFIX}/share/texmf/web2c   

.include <bsd.port.mk>
