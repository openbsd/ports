# $OpenBSD: Makefile,v 1.52 2016/05/04 11:11:55 jasper Exp $

ONLY_FOR_ARCHS =${APM_ARCHS}

COMMENT =	userland power management interface

DISTNAME =	upower-0.99.4
REVISION =	0
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	sysutils
SHARED_LIBS +=  upower-glib          2.0      # 3.1

HOMEPAGE =	http://upower.freedesktop.org/
MASTER_SITES =	${HOMEPAGE}/releases/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 m pthread

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-introspection \
			--enable-man-pages \
			--with-historydir=/var/db/upower \
			--with-backend=openbsd \
			--without-idevice

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/upower

USE_GMAKE =	Yes

MODULES =	textproc/intltool

LIB_DEPENDS =	devel/glib2
BUILD_DEPENDS =	devel/gobject-introspection \
		textproc/docbook-xsl

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

.include <bsd.port.mk>
