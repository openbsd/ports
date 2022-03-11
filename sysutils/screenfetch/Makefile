COMMENT =	display system information in the terminal for screenshots
PKGNAME =	${DISTNAME:L}

GH_ACCOUNT =	KittyKatt
GH_PROJECT =	screenFetch
GH_TAGNAME =	v3.9.1
REVISION =	0

CATEGORIES =	sysutils misc

# GPLv3+
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	graphics/scrot \
		net/curl \
		shells/bash

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

# Upstream has no Makefile.
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/screenfetch-dev ${PREFIX}/bin/screenfetch
	${INSTALL_MAN} ${WRKSRC}/screenfetch.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
