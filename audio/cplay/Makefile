# $OpenBSD: Makefile,v 1.19 2015/07/18 04:46:56 jasper Exp $

COMMENT=		curses front-end for various audio players

DISTNAME=		cplay-1.49
REVISION =		8
CATEGORIES=		audio

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://spacehopper.org/mirrors/

MODULES=		lang/python

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-configure:
	@perl -pi -e "s,/etc/,${SYSCONFDIR}/," ${WRKSRC}/cplay{,.1}
	@perl -pi -e "s,^#!.*python,#!${MODPY_BIN}," ${WRKSRC}/cplay

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cplay ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/cplay.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
