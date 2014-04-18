# $OpenBSD: Makefile,v 1.1.1.1 2014/04/18 15:14:05 pascal Exp $

COMMENT =	data files for vegastrike

DISTNAME =	vegastrike-data-${V}

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

EXTRACT_ONLY =

BUILD_DEPENDS =	archivers/bzip2
RUN_DEPENDS =	devel/desktop-file-utils

do-install:
	tar -xjf ${FULLDISTDIR}/${DISTFILES} -C ${PREFIX}/share \
		-s ",${DISTNAME},vegastrike,"
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons
	cp ${PREFIX}/share/vegastrike/vegastrike.desktop \
		${PREFIX}/share/applications
	cp ${PREFIX}/share/vegastrike/vegastrike.ico \
		${PREFIX}/share/icons

.include <bsd.port.mk>
