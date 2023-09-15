COMMENT =	perspective puzzle game

GH_ACCOUNT =	Stabyourself
GH_PROJECT =	orthorobot
GH_TAGNAME =	v1.1.1

CATEGORIES =	games

HOMEPAGE =	https://stabyourself.net/orthorobot/

# WTFPL
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip

BUILD_DEPENDS =		archivers/zip
RUN_DEPENDS =		games/love/0.10

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/orthorobot ${PREFIX}/bin
	sed -i -e "s,\$${LOCALBASE},${LOCALBASE},g" ${PREFIX}/bin/orthorobot
	${INSTALL_DATA_DIR} ${PREFIX}/share/orthorobot
	cd ${WRKSRC} && zip -r ${PREFIX}/share/orthorobot/orthorobot.love *

.include <bsd.port.mk>
