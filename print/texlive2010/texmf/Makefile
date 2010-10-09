# $OpenBSD: Makefile,v 1.1 2010/10/09 15:41:28 edd Exp $

COMMENT-main =		texlive texmf for laTeX/PdfTeX 
COMMENT-full =		texlive texmf for XeTeX/ConTeXt and extra macros
COMMENT-docs =		texlive documentation

DISTNAME =		texlive-${DIST_V}-texmf

PKGNAME-main = 		texlive_texmf-minimal-${V}
PKGNAME-full = 		texlive_texmf-full-${V}
PKGNAME-docs =	 	texlive_texmf-docs-${V}

NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		::archivers/xz
# XXX re-add when ready
#RUN_DEPENDS-full =	:texlive_texmf-minimal-${V}:print/texlive/texmf,-main \
#			:texlive_base-${V}:print/texlive/base
#RUN_DEPENDS-docs = 	:texlive_base-${V}:print/texlive/base
#
MULTI_PACKAGES = 	-main -full -docs

SUBST_VARS +=		LOCALBASE

do-install:
	mv ${WRKDIST}/texmf ${PREFIX}/share
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/*

# XXX re-add when ready
#post-install:
#	mv ${PREFIX}/share/texmf/web2c/updmap.cfg \
#		${PREFIX}/share/texmf/web2c/updmap.cfg-dist
#	${SUBST_CMD} ${PREFIX}/share/texmf/web2c/texmf.cnf
#	mv  ${PREFIX}/share/texmf/web2c/fmtutil.cnf \
#		${PREFIX}/share/texmf/web2c/fmtutil.cnf-full

.include <bsd.port.mk>
