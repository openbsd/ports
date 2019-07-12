# $OpenBSD: Makefile,v 1.20 2019/07/12 20:51:09 sthen Exp $

COMMENT =	good looking terminal emulator which mimics old CRT displays

CATEGORIES =	x11

GH_ACCOUNT =	Swordfish90
GH_PROJECT =	cool-retro-term
GH_TAGNAME =	1.1.1
REVISION =	1

QMLTERMWIDGET =	48274c75660e28d44af7c195e79accdf1bd44963
MASTER_SITES0 =	https://github.com/Swordfish90/qmltermwidget/archive/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		qmltermwidget-{}${QMLTERMWIDGET}.tar.gz:0

USE_WXNEEDED =	Yes

HOMEPAGE =	https://github.com/Swordfish90/cool-retro-term

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Sql
WANTLIB += Qt5Widgets c m pthread
WANTLIB += ${COMPILER_LIBCXX}

MODULES =	devel/qmake x11/qt5

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	x11/qt5/qtdeclarative

MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS} -fPIC -std=c++11"

NO_TEST =	Yes

post-extract:
	rmdir ${WRKSRC}/qmltermwidget
	mv ${WRKDIR}/qmltermwidget-${QMLTERMWIDGET} ${WRKSRC}/qmltermwidget

pre-configure:
	 ${SUBST_CMD} ${WRKSRC}/{app/app,cool-retro-term}.pro

.include <bsd.port.mk>
