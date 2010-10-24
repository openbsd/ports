# $OpenBSD: Makefile,v 1.4 2010/10/24 22:31:00 edd Exp $

COMMENT-main =		texlive texmf for laTeX/PdfTeX 
COMMENT-full =		texlive texmf for XeTeX/ConTeXt and extra macros
COMMENT-docs =		texlive documentation

DISTNAME =		texlive-${DIST_V}-texmf
MASTER_SITES0 =		http://theunixzoo.co.uk/distfiles/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texmf-var-pregen-2010${EXTRACT_SUFX}:0

PKGNAME-main = 		texlive_texmf-minimal-${V}
PKGNAME-full = 		texlive_texmf-full-${V}
PKGNAME-docs =	 	texlive_texmf-docs-${V}

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
# plug in my pregenerated map and formats
	mv ${WRKDIR}/texmf-var ${PREFIX}/share
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/*

post-install:
	${SUBST_CMD} ${PREFIX}/share/texmf/web2c/texmf.cnf

.include <bsd.port.mk>
