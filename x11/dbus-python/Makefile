# $OpenBSD: Makefile,v 1.25 2013/03/21 08:48:55 ajacoutot Exp $

COMMENT =	dbus bindings for Python

DISTNAME =	dbus-python-1.1.1
REVISION =	0

CATEGORIES =	x11

HOMEPAGE =	http://dbus.freedesktop.org/

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 pcre pthread z

MASTER_SITES =	${HOMEPAGE}releases/dbus-python/

MODULES =	lang/python \
		devel/gettext

LIB_DEPENDS =	x11/dbus-glib>=0.94v0


CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		 --disable-html-docs

TEST_FLAGS =	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
