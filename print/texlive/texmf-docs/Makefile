# $OpenBSD: Makefile,v 1.3 2007/09/10 13:47:05 steven Exp $

COMMENT=		documentation texmf tree for TeXLive

V=			2007
DISTNAME=		texlive_texmf-docs-${V}

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
