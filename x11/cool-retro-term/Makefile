COMMENT =	good looking terminal emulator which mimics old CRT displays

CATEGORIES =	x11

GH_ACCOUNT =	Swordfish90
GH_PROJECT =	cool-retro-term
GH_TAGNAME =	1.2.0
REVISION =	0

# check version in submodule at https://github.com/Swordfish90/cool-retro-term
QMLTERMWIDGET =	63228027e1f97c24abb907550b22ee91836929c5
SITES.a =	https://github.com/Swordfish90/qmltermwidget/archive/
DISTFILES.a = 	qmltermwidget-{}${QMLTERMWIDGET}.tar.gz

USE_WXNEEDED =	Yes

HOMEPAGE =	https://github.com/Swordfish90/cool-retro-term

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick
WANTLIB += Qt5QuickControls2 Qt5Sql Qt5Widgets c m

MODULES =	devel/qmake x11/qt5

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtquickcontrols

# (yes, both qtquickcontrols + qtquickcontrols2)
LIB_DEPENDS =	x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols2

MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS} -fPIC -std=c++11"

NO_TEST =	Yes

post-extract:
	rmdir ${WRKSRC}/qmltermwidget
	mv ${WRKDIR}/qmltermwidget-${QMLTERMWIDGET} ${WRKSRC}/qmltermwidget

pre-configure:
	 ${SUBST_CMD} ${WRKSRC}/{app/app,cool-retro-term}.pro

.include <bsd.port.mk>
