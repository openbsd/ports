# $OpenBSD: Makefile,v 1.9 2013/01/07 14:15:15 bentley Exp $

COMMENT=		minimalist IRC client

DISTNAME=		ii-1.7
CATEGORIES=		net

HOMEPAGE=		http://tools.suckless.org/ii
MASTER_SITES=		http://dl.suckless.org/tools/

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ii ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/ii.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ii
	${INSTALL_DATA} ${WRKSRC}/{README,FAQ,query.sh} ${PREFIX}/share/doc/ii

.include <bsd.port.mk>
