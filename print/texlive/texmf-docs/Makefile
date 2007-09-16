# $OpenBSD: Makefile,v 1.4 2007/09/16 08:09:57 steven Exp $

COMMENT=		documentation texmf tree for TeXLive

V=			2007
DISTNAME=		texlive_texmf-docs-${V}
PKGNAME=		${DISTNAME}p0

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

pre-install:
# man/info pages are installed with the base package
	rm -Rf ${WRKDIST}/texmf/doc/man
	rm -Rf ${WRKDIST}/texmf/doc/info

do-install:
	mv ${WRKDIST}/texmf ${PREFIX}/share
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/*

.include <bsd.port.mk>
