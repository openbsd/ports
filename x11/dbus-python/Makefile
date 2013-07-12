# $OpenBSD: Makefile,v 1.26 2013/07/12 06:15:29 ajacoutot Exp $

COMMENT =	dbus bindings for Python

DISTNAME =	dbus-python-1.2.0

CATEGORIES =	x11

HOMEPAGE =	http://dbus.freedesktop.org/

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 pcre pthread z

MASTER_SITES =	${HOMEPAGE}releases/dbus-python/

MODULES =	lang/python \
		devel/gettext

LIB_DEPENDS =	x11/dbus-glib


CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		 --disable-html-docs

TEST_FLAGS =	LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
