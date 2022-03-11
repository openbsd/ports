COMMENT =	library for parsing and evaluating OSM data
DISTNAME =	kopeninghours-${VERSION}
CATEGORIES =	devel geo

SHARED_LIBS +=  KOpeningHours       0.0 # 21.8.1

WANTLIB += ${COMPILER_LIBCXX} KF5Holidays KF5I18n Qt5Core Qt5Network
WANTLIB += Qt5Qml boost_python${MODPY_VERSION:C/\.//g}-mt m ${MODPY_WANTLIB}

MODKDE5_TRANSLATIONS = yes

MODULES +=	lang/python

BUILD_DEPENDS =	x11/qt5/qtquickcontrols \
		devel/bison
RUN_DEPENDS =	x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/boost \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		x11/qt5/qtdeclarative

CONFIGURE_ARGS +=	-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${WRKINST}/${MODPY_SITEPKG}/PyKOpeningHours/

.include <bsd.port.mk>
