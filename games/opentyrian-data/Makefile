COMMENT =	data for opentyrian

V =		2.1
DISTNAME =	tyrian${V:S/.//}
PKGNAME =	opentyrian-data-$V

CATEGORIES =	games

HOMEPAGE =	https://www.camanis.net/

# No redistribution permission
PERMIT_PACKAGE =	No explicit redistribution permission
PERMIT_DISTFILES =	No explicit redistribution permission

SITES =		https://www.camanis.net/tyrian/

EXTRACT_SUFX =		.zip

FIX_EXTRACT_PERMISSIONS =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tyrian
	${INSTALL_DATA} ${WRKSRC}/* ${PREFIX}/share/tyrian

.include <bsd.port.mk>
