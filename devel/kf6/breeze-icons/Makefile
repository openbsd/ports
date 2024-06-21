BROKEN-i386 =	out of memory compiling qrc_breeze-icons.cpp

COMMENT =	KDE Breeze-style light and dark icon themes
DISTNAME =	breeze-icons-${VERSION}

SHARED_LIBS +=	KF6BreezeIcons            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui m

MODULES =	lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR}
RUN_DEPENDS =	x11/gtk+4,-guic

TEST_DEPENDS =	sysutils/fdupes

CONFIGURE_ARGS =	-DBINARY_ICONS_RESOURCE=ON

.include <bsd.port.mk>
