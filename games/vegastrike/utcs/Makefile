COMMENT =	game data for Upon The Coldest Sea

DISTNAME =	vsUTCS_v${V}-Source
PKGNAME =	vegastrike-utcs-${V}

SITES =		https://github.com/vegastrike/Assets-Production/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

NO_BUILD =	Yes
NO_TEST =	Yes

EXTRACT_ONLY =

MODULES = 	lang/python

MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

RUN_DEPENDS =	devel/desktop-file-utils

do-install:
	xz -dc ${FULLDISTDIR}/${DISTFILES} | \
		tar -xf - -C ${PREFIX}/share \
		-s ",${DISTNAME},vegastrike,"
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons
	mv ${PREFIX}/share/vegastrike/vegastrike.desktop \
		${PREFIX}/share/applications
	cp ${PREFIX}/share/vegastrike/vegastrike.xpm \
		${PREFIX}/share/icons

post-install:
	find ${PREFIX}/share/vegastrike/modules/ \
		-name *.py -exec ${MODPY_BIN_ADJ} {} +
	${MODPY_BIN_ADJ} \
		${PREFIX}/share/vegastrike/cgi-accountserver/accountserver.py

.include <bsd.port.mk>
