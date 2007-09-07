# $OpenBSD: Makefile,v 1.2 2007/09/07 15:26:18 steven Exp $

COMMENT=		documentation texmf tree for TeXLive

V=			2007
DISTNAME=		texlive_texmf-docs-${V}

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

pre-install:
	@# Blast away man/info pages, -base installed these already 
	rm -Rf ${WRKDIST}/texmf/doc/man
	rm -Rf ${WRKDIST}/texmf/doc/info

do-install:
	@# Simple copy for install
	umask 022 && \
		cp -r ${WRKDIST}/texmf ${PREFIX}/share && \
		cp -r ${WRKDIST}/texmf-dist ${PREFIX}/share

.include <bsd.port.mk>
