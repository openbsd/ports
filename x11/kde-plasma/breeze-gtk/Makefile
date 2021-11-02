# $OpenBSD: Makefile,v 1.2 2021/11/02 00:02:59 sthen Exp $

COMMENT =		GTK2 theme matching KDE Breeze
DISTNAME =		breeze-gtk-${VERSION}
REVISION =		0

MODULES =		lang/python

BUILD_DEPENDS =		www/sassc \
			graphics/py-cairo${MODPY_FLAVOR} \
			x11/gtk+2 \
			x11/kde-plasma/breeze

RUN_DEPENDS =		x11/kde-plasma/breeze

NO_TEST =		Yes

.include <bsd.port.mk>
