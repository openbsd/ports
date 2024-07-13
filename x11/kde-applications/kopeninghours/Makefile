COMMENT =	library for parsing and evaluating OSM data
DISTNAME =	kopeninghours-${VERSION}
CATEGORIES =	devel geo

SHARED_LIBS +=  KOpeningHours       0.1 # 21.8.1

WANTLIB += ${COMPILER_LIBCXX} KF6Holidays KF6I18n Qt6Core Qt6Network
WANTLIB += Qt6Qml boost_python${MODPY_VERSION:C/\.//g}-mt m ${MODPY_WANTLIB}

MODKDE_TRANSLATIONS = yes

MODULES +=	lang/python

BUILD_DEPENDS =	devel/bison

LIB_DEPENDS =	devel/boost \
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		x11/qt6/qtdeclarative

post-install:
	${MODPY_COMPILEALL} \
		${WRKINST}/${MODPY_SITEPKG}/PyKOpeningHours/

.include <bsd.port.mk>
