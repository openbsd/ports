COMMENT =	system information tool written in bash
CATEGORIES =	sysutils misc

GH_ACCOUNT =	dylanaraps
GH_PROJECT =	neofetch
GH_TAGNAME =	7.1.0
REVISION =	0

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	shells/bash

NO_BUILD =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

# A little nicer than the upstream install target.
do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/neofetch ${PREFIX}/bin/neofetch
	${INSTALL_MAN} ${WRKSRC}/neofetch.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
