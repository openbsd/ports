COMMENT =	dex to java decompiler

VERSION =	1.5.3
DISTNAME =	jadx-${VERSION}
REVISION =	0

CATEGORIES =	devel security

HOMEPAGE =	https://github.com/skylot/jadx

# Apachev2
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/skylot/jadx/releases/download/v${VERSION}/

EXTRACT_SUFX =	.zip

MODULES =	java
MODJAVA_VER =	11+

RUN_DEPENDS =	java/javaPathHelper \
		shells/bash

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST = ${WRKDIR}

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/jadx/
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/jadx/lib
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/jadx/bin
	cp -r ${WRKSRC}/lib ${PREFIX}/share/jadx/
.for i in jadx jadx-gui
	${INSTALL_SCRIPT} ${WRKSRC}/bin/${i} ${PREFIX}/share/jadx/bin/
	ln -s ${TRUEPREFIX}/share/jadx/bin/${i} ${PREFIX}/bin/${i}
.endfor

.include <bsd.port.mk>
