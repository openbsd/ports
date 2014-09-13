# $OpenBSD: Makefile,v 1.39 2014/09/13 16:36:54 ajacoutot Exp $

ONLY_FOR_ARCHS =${APM_ARCHS}

COMMENT =	userland power management interface

DISTNAME =	upower-0.99.1
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	sysutils
SHARED_LIBS +=  upower-glib               1.0 # 2.0

HOMEPAGE =	http://upower.freedesktop.org/
MASTER_SITES =	${HOMEPAGE}/releases/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gobject-2.0 m
WANTLIB += pthread

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-introspection \
			--enable-man-pages \
			--with-historydir=/var/db/upower \
			--with-backend=openbsd \
			--without-idevice

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/upower

USE_GMAKE =	Yes

MODULES =	textproc/intltool

LIB_DEPENDS =	x11/dbus-glib
BUILD_DEPENDS =	devel/gobject-introspection \
		textproc/docbook-xsl

.include <bsd.port.mk>
