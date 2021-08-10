# $OpenBSD: Makefile,v 1.12 2021/08/10 19:26:16 sthen Exp $

COMMENT =	KDE Breeze-style light and dark icon themes
DISTNAME =	breeze-icons-${VERSION}
REVISION =	0

WANTLIB- =

RUN_DEPENDS =	x11/gtk+3,-guic

PKG_ARCH =	*

MODULES =	lang/python
MODPY_RUNDEP =	No
BUILD_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR}

TEST_DEPENDS =	sysutils/fdupes

.include <bsd.port.mk>
