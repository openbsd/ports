COMMENT =	dictionary lookup program for X11

DISTNAME =	ding-1.9

CATEGORIES =	textproc

HOMEPAGE =	https://www-user.tu-chemnitz.de/~fri/ding

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# GPLv2+
PERMIT_PACKAGE =	Yes

SITES =		https://ftp.tu-chemnitz.de/pub/Local/urz/ding/

MODULES =	x11/tk
MODTK_VERSION =	8.5

LIB_DEPENDS =	${MODTK_LIB_DEPENDS}

RUN_DEPENDS =	${MODTK_RUN_DEPENDS} \
		devel/desktop-file-utils \
		textproc/tre

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${SUBST_CMD} ${WRKSRC}/ding
	${MODTCL_WISH_ADJ} ${WRKSRC}/ding
	${INSTALL_SCRIPT} ${WRKSRC}/ding ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/ding
	${INSTALL_DATA} ${WRKSRC}/de-en.txt ${PREFIX}/share/ding
	${INSTALL_DATA} ${WRKSRC}/ding.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/ding.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/ding.png ${PREFIX}/share/pixmaps
	ln -s /usr/bin/true ${WRKDIR}/bin/update-desktop-database


.include <bsd.port.mk>
