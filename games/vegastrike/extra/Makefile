# $OpenBSD: Makefile,v 1.1.1.1 2014/04/18 15:14:05 pascal Exp $

COMMENT =	extra data files for vegastrike

DISTNAME =	vegastrike-extra-${V}

RUN_DEPENDS =	games/vegastrike/data>=${V}

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vegastrike
	cd ${WRKSRC} && pax -rw . ${PREFIX}/share/vegastrike

.include <bsd.port.mk>
