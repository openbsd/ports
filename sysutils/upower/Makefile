# $OpenBSD: Makefile,v 1.66 2021/10/29 18:26:41 landry Exp $

ONLY_FOR_ARCHS =${APM_ARCHS}

COMMENT =	userland power management interface

V =	0.99.13
DISTNAME =	upower-UPOWER_${V:S/./_/g}
PKGNAME =	upower-${V}

CATEGORIES =	sysutils
SHARED_LIBS +=  upower-glib          2.1      # 3.1

HOMEPAGE =	https://upower.freedesktop.org/
MASTER_SITES =	https://gitlab.freedesktop.org/upower/upower/-/archive/UPOWER_${V:S/./_/g}/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 m

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
CONFIGURE_STYLE =	autoreconf
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

post-extract:
	touch ${WRKSRC}/gtk-doc.make

.include <bsd.port.mk>
