# $OpenBSD: Makefile,v 1.4 2017/07/27 09:55:44 sthen Exp $

COMMENT =		free chess database and analyzer
DISTNAME =		chessx-1.4.6
CATEGORIES =		games
HOMEPAGE =		http://chessx.sourceforge.net/
MAINTAINER =		Roman Yakovlev <obsd@51t.ru>
REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  GL Qt5Core Qt5Gui Qt5Multimedia Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml c m pthread quazip5 z
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=chessx/}
EXTRACT_SUFX =		.tgz

MODULES =		x11/qt5 devel/qmake
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		archivers/quazip,qt5 \
			x11/qt5/qtmultimedia \
			x11/qt5/qtsvg

NO_TEST =		Yes

CXXFLAGS +=		-I${LOCALBASE}/include/quazip5

# make sure bundled quazip is not picked up
post-extract:
	rm -R ${WRKDIST}/src/quazip

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/release/chessx ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/unix/chessx.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
