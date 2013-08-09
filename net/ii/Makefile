# $OpenBSD: Makefile,v 1.11 2013/08/09 04:45:21 gsoares Exp $

COMMENT=		minimalist IRC client

DISTNAME=		ii-1.7
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://tools.suckless.org/ii
MASTER_SITES=		http://dl.suckless.org/tools/

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ii ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/ii.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ii
	${INSTALL_DATA} ${WRKSRC}/{README,FAQ,query.sh} ${PREFIX}/share/doc/ii

.include <bsd.port.mk>
