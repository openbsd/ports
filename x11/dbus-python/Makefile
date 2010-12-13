# $OpenBSD: Makefile,v 1.16 2010/12/13 10:42:00 ajacoutot Exp $

COMMENT =	dbus bindings for Python

DISTNAME =	dbus-python-0.83.2

CATEGORIES =	x11

HOMEPAGE =	http://dbus.freedesktop.org/

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC-like
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	glib-2.0 gobject-2.0 gthread-2.0 pcre dbus-1 dbus-glib-1

MASTER_SITES =	${HOMEPAGE}releases/dbus-python/

MODULES =	lang/python \
		devel/gettext

LIB_DEPENDS =	x11/dbus \
		x11/dbus-glib

USE_LIBTOOL =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		 --disable-html-docs

.include <bsd.port.mk>
