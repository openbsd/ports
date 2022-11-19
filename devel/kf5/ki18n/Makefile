COMMENT =	KDE Gettext-based UI text internationalization
DISTNAME =	ki18n-${VERSION}

SHARED_LIBS =	KF5I18n			6.1
SHARED_LIBS +=	KF5I18nLocaleData	0.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Qml intl m

MODULES +=	lang/python

MODPY_BUILDDEP =	No

RUN_DEPENDS =	devel/iso-codes

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/iso-codes \
		x11/qt5/qtscript

LIB_DEPENDS =	devel/gettext,-runtime \
		x11/qt5/qtdeclarative

# for tests
PORTHOME =	${WRKDIR}

# Calling compileall.py isn't needed, the ts-pmap-compile script
# gets called with "${PYTHON} -B ..." in cmake/build-tsfiles.cmake.

.include <bsd.port.mk>
