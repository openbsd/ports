# $OpenBSD: Makefile,v 1.1.1.1 2017/03/24 19:12:50 bentley Exp $

COMMENT =	display system information in the terminal for screenshots

V =		3.8.0
PKGNAME =	screenfetch-$V

GH_ACCOUNT =	KittyKatt
GH_PROJECT =	screenFetch
GH_TAGNAME =	v$V

CATEGORIES =	sysutils

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		graphics/scrot \
			net/curl \
			shells/bash

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/screenfetch-dev ${PREFIX}/bin/screenfetch
	${INSTALL_SCRIPT} ${WRKSRC}/screenfetch.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
