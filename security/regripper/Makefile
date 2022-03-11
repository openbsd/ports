COMMENT =		Windows Registry data extraction tool

DISTNAME =		regripper-3.0

CATEGORIES =		security

HOMEPAGE =		https://regripper.wordpress.com/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		keydet89
GH_PROJECT =		RegRipper3.0
GH_COMMIT =		bd5b8bce508d38799f58936735a787ba312bf5d4

MODULES =		perl

SUBST_VARS=		TRUEPREFIX

RUN_DEPENDS =		devel/p5-Parse-Win32Registry

pre-install:
	${SUBST_CMD} ${WRKSRC}/rip.pl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rip.pl ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/regripper/
	cp -r ${WRKSRC}/plugins/ ${PREFIX}/share/regripper/
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/regripper/

NO_BUILD =		Yes
NO_TEST =		Yes

.include <bsd.port.mk>
