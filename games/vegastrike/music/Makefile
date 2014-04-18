# $OpenBSD: Makefile,v 1.1.1.1 2014/04/18 15:14:09 pascal Exp $

COMMENT =	music files for vegastrike

DISTNAME =	vegastrike-music-${V}

RUN_DEPENDS =	games/vegastrike/data>=${V}

EXTRACT_SUFX =	.tar

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vegastrike
	cd ${WRKSRC} && pax -rw . ${PREFIX}/share/vegastrike

.include <bsd.port.mk>
