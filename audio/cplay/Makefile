# $OpenBSD: Makefile,v 1.21 2015/12/03 21:24:29 sthen Exp $

COMMENT=		curses front-end for various audio players

DISTNAME=		cplay-1.49
REVISION =		8
CATEGORIES=		audio

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

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
