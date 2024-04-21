COMMENT =	KDE Breeze-style light and dark icon themes
DISTNAME =	breeze-icons-${VERSION}

PKG_ARCH =	*

WANTLIB- =

MODULES =	lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR}
RUN_DEPENDS =	x11/gtk+4,-guic

TEST_DEPENDS =	sysutils/fdupes

CONFIGURE_ARGS =	-DBINARY_ICONS_RESOURCE=ON

.include <bsd.port.mk>
