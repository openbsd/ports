# $OpenBSD: Makefile,v 1.13 2021/09/10 08:42:02 rsadowski Exp $

COMMENT =	KDE Breeze-style light and dark icon themes
DISTNAME =	breeze-icons-${VERSION}

WANTLIB- =

RUN_DEPENDS =	x11/gtk+3,-guic

PKG_ARCH =	*

MODULES =	lang/python
MODPY_RUNDEP =	No
BUILD_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR}

TEST_DEPENDS =	sysutils/fdupes

.include <bsd.port.mk>
