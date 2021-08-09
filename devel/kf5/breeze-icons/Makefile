# $OpenBSD: Makefile,v 1.11 2021/08/09 20:36:18 rsadowski Exp $

COMMENT =	KDE Breeze-style light and dark icon themes
DISTNAME =	breeze-icons-${VERSION}
REVISION =	0

WANTLIB- =

RUN_DEPENDS =	x11/gtk+3,-guic

PKG_ARCH =	*

MODULES =		lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =	shells/bash \
		textproc/libxml

TEST_DEPENDS =	sysutils/fdupes

.include <bsd.port.mk>
