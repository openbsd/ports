# $OpenBSD: Makefile,v 1.2 2015/04/05 12:59:00 ajacoutot Exp $

COMMENT=	wrapper for a game about breaking and placing blocks

V=		0.0.4
GH_PROJECT=	minecraft
GH_ACCOUNT=	qbit
GH_TAGNAME=	${GH_PROJECT}-${V}
DISTNAME=	${GH_TAGNAME}
REVISION=	0

CATEGORIES=	games

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES=	java
MODJAVA_VER=	1.7+

# BSD
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS= 	games/lwjgl \
		java/javaPathHelper

MAKE_FLAGS=	PREFIX=${PREFIX}

do-configure:
	${SUBST_CMD} ${WRKSRC}/minecraft

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/minecraft ${PREFIX}/bin/

.include <bsd.port.mk>
