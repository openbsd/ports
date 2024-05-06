COMMENT =		dbus bindings for Python

V =			1.3.2
DISTNAME =		dbus-python-${V}
PKGNAME =		py-dbus-${V}
REVISION =		2

CATEGORIES =		x11

HOMEPAGE =		http://dbus.freedesktop.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC-like
PERMIT_PACKAGE =	Yes

WANTLIB += dbus-1 glib-2.0

SITES =			${HOMEPAGE}releases/dbus-python/

MODULES =		devel/meson \
			lang/python

FLAVORS =		python3
FLAVOR =		python3

LIB_DEPENDS =		devel/glib2 \
			x11/dbus

RUN_DEPENDS =		x11/dbus

TEST_DEPENDS =		devel/py-gobject3${MODPY_FLAVOR}

pre-configure:
	sed -i "s,/bin/bash,/bin/sh,g" \
		${WRKSRC}/test/{TestSuitePythonService.service.in,run-test.sh}

.include <bsd.port.mk>
