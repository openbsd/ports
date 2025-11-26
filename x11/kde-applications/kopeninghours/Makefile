COMMENT =	library for parsing and evaluating OSM data

DISTNAME =	kopeninghours-${VERSION}

CATEGORIES =	devel geo

SHARED_LIBS +=  KOpeningHours       0.1 # 21.8.1

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += KF6Holidays KF6I18n Qt6Core Qt6Network Qt6Qml boost_container-mt
WANTLIB += boost_graph-mt boost_python${MODPY_MAJORMINOR}-mt intl m util

MODKDE_TRANSLATIONS = yes

# needs c++ and python
COMPILER =	base-clang ports-gcc
COMPILER_LANGS=	c c++

MODULES +=	lang/python

BUILD_DEPENDS =	devel/bison

LIB_DEPENDS =	devel/boost \
		devel/gettext,-runtime \
		devel/kf6/kholidays \
		devel/kf6/ki18n \
		x11/qt6/qtdeclarative \
		${MODPY_LIB_DEPENDS}

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

post-install:
	${MODPY_COMPILEALL} \
		${WRKINST}/${MODPY_SITEPKG}/PyKOpeningHours/

.include <bsd.port.mk>
