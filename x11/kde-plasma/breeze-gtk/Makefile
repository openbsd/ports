# $OpenBSD: Makefile,v 1.3 2021/11/09 08:25:52 rsadowski Exp $

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
