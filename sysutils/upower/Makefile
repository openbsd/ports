# $OpenBSD: Makefile,v 1.62 2019/11/10 17:31:06 ajacoutot Exp $

ONLY_FOR_ARCHS =${APM_ARCHS}

COMMENT =	userland power management interface

DISTNAME =	upower-0.99.11
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	sysutils
SHARED_LIBS +=  upower-glib          2.1      # 3.1

HOMEPAGE =	https://upower.freedesktop.org/
MASTER_SITES =	https://upower.freedesktop.org/releases/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 m

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

LIB_DEPENDS =	devel/glib2
BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gobject-introspection \
		textproc/docbook-xsl

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

.include <bsd.port.mk>
