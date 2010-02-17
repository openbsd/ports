# $OpenBSD: Makefile,v 1.10 2010/02/17 10:19:08 jsg Exp $

COMMENT-main =		texlive texmf for laTeX/PdfTeX 
COMMENT-full =		texlive texmf for XeTeX/ConTeXt and extra macros
COMMENT-docs =		texlive documentation

DISTNAME =		texlive-${DIST_V}-texmf

PKGNAME-main = 		texlive_texmf-minimal-${V}p0
PKGNAME-full = 		texlive_texmf-full-${V}p1
PKGNAME-docs =	 	texlive_texmf-docs-${V}p0

NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		::archivers/xz
RUN_DEPENDS-full =	:texlive_texmf-minimal-${V}:print/texlive/texmf,-main \
			:texlive_base-${V}:print/texlive/base
RUN_DEPENDS-docs = 	:texlive_base-${V}:print/texlive/base

MULTI_PACKAGES = 	-main -full -docs

SUBST_VARS +=		LOCALBASE

do-install:
	mv ${WRKDIST}/texmf ${PREFIX}/share
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/*

post-install:
	mv ${PREFIX}/share/texmf/web2c/updmap.cfg \
		${PREFIX}/share/texmf/web2c/updmap.cfg-dist
	${SUBST_CMD} ${PREFIX}/share/texmf/web2c/texmf.cnf
	mv  ${PREFIX}/share/texmf/web2c/fmtutil.cnf \
		${PREFIX}/share/texmf/web2c/fmtutil.cnf-full

.include <bsd.port.mk>
