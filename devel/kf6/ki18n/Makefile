COMMENT =	KDE gettext-based UI text internationalization
DISTNAME =	ki18n-${VERSION}

SHARED_LIBS +=  KF6I18n                   0.0 # 0.0
SHARED_LIBS +=  KF6I18nLocaleData         0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Network Qt6Qml intl m

MODULES +=	lang/python \
		textproc/intltool

RUN_DEPENDS =	devel/iso-codes

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/iso-codes

LIB_DEPENDS =	devel/gettext,-runtime \
		x11/qt6/qtdeclarative

# for tests
PORTHOME =	${WRKDIR}

# Calling compileall.py isn't needed, the ts-pmap-compile script
# gets called with "${PYTHON} -B ..." in cmake/build-tsfiles.cmake.

.include <bsd.port.mk>
