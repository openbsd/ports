# $OpenBSD: Makefile,v 1.1.1.1 2021/03/06 06:36:22 rsadowski Exp $

COMMENT =		GTK2 theme matching KDE Breeze
DISTNAME =		breeze-gtk-${VERSION}

MODULES =		lang/python

BUILD_DEPENDS =		www/sassc \
			graphics/py-cairo${MODPY_FLAVOR} \
			x11/gtk+2 \
			x11/kde-plasma/breeze

RUN_DEPENDS =		x11/kde-plasma/breeze

NO_TEST =		Yes

.include <bsd.port.mk>
