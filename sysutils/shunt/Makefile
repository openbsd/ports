# $OpenBSD: Makefile,v 1.7 2016/08/12 22:12:13 jca Exp $

COMMENT=	tools to extend pipe capabilities

DISTNAME=	shunt-1.7.3
REVISION=	0
CATEGORIES=	sysutils

HOMEPAGE=	http://www.serice.net/shunt/

MAINTAINER=	Josh Grosse <josh@jggimi.homeip.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

# uses pledge()
WANTLIB=	c

USE_GMAKE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/* /${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/shunt
	${INSTALL_DATA} ${WRKSRC}/README.TXT ${PREFIX}/share/doc/shunt

.include <bsd.port.mk>
