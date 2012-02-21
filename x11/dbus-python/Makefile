# $OpenBSD: Makefile,v 1.20 2012/02/21 22:36:43 sthen Exp $

COMMENT =	dbus bindings for Python

DISTNAME =	dbus-python-0.84.0
REVISION =	2

CATEGORIES =	x11

HOMEPAGE =	http://dbus.freedesktop.org/

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC-like
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 pcre z

MASTER_SITES =	${HOMEPAGE}releases/dbus-python/

MODULES =	lang/python \
		devel/gettext

LIB_DEPENDS =	x11/dbus-glib>=0.94v0

USE_LIBTOOL =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		 --disable-html-docs

.include <bsd.port.mk>
