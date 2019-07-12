# $OpenBSD: Makefile,v 1.23 2019/07/12 20:43:32 sthen Exp $

COMMENT=		curses front-end for various audio players

DISTNAME=		cplay-1.49
REVISION =		9
CATEGORIES=		audio

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://spacehopper.org/mirrors/

MODULES=		lang/python

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-configure:
	@sed -i "s,/etc/,${SYSCONFDIR}/," ${WRKSRC}/cplay{,.1}
	@sed -i "s,^#!.*python,#!${MODPY_BIN}," ${WRKSRC}/cplay

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cplay ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/cplay.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
