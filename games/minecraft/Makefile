# $OpenBSD: Makefile,v 1.1.1.1 2014/10/14 18:45:10 abieber Exp $

COMMENT=	wrapper for a game about breaking and placing blocks

V=		0.0.4
GH_PROJECT=	minecraft
GH_ACCOUNT=	qbit
GH_TAGNAME=	${GH_PROJECT}-${V}
DISTNAME=	${GH_TAGNAME}

CATEGORIES=	games

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES=	java
MODJAVA_VER=	1.7+

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS= 	games/lwjgl \
		java/javaPathHelper

do-configure:
	perl -pi -e 's,/usr/local,${LOCALBASE},' ${WRKSRC}/minecraft

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/minecraft ${PREFIX}/bin/

.include <bsd.port.mk>
