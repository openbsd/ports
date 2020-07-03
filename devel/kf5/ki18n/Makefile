# $OpenBSD: Makefile,v 1.13 2020/07/03 21:12:39 sthen Exp $

COMMENT =	KDE Gettext-based UI text internationalization
DISTNAME =	ki18n-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5I18n		5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml intl m

MODULES +=	lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_BUILDDEP =	No

BUILD_DEPENDS =	devel/gettext,-tools \
		x11/qt5/qtscript

LIB_DEPENDS =	devel/gettext,-runtime \
		x11/qt5/qtdeclarative

# for tests
PORTHOME =	${WRKDIR}

# Calling compileall.py isn't needed, the ts-pmap-compile script
# gets called with "${PYTHON} -B ..." in cmake/build-tsfiles.cmake.

.include <bsd.port.mk>
