# $OpenBSD: Makefile,v 1.16 2016/12/30 16:06:55 fcambus Exp $

COMMENT=	ASCII drawing utility

GH_ACCOUNT =	statico
GH_PROJECT =	cadubi
GH_TAGNAME =	v1.3.3

CATEGORIES=	graphics editors

# MIT
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cadubi ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cadubi
	${INSTALL_DATA} ${WRKSRC}/{help.txt,LICENSE} \
		${PREFIX}/share/doc/cadubi
	${INSTALL_MAN} ${WRKSRC}/cadubi.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
