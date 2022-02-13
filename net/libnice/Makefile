# $OpenBSD: Makefile,v 1.40 2022/02/13 18:13:31 kn Exp $

COMMENT =		GLib ICE implementation
DISTNAME =		libnice-0.1.18
CATEGORIES =		net

SHARED_LIBS +=		nice	4.0	# 10.11.0

WANTLIB += c crypto gio-2.0 glib-2.0 gobject-2.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gupnp-igd-1.0

HOMEPAGE =		https://libnice.freedesktop.org
MASTER_SITES =		https://libnice.freedesktop.org/releases/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# dual-licensed: MPL 1.1 + LGPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		devel/meson

BUILD_DEPENDS =		devel/gobject-introspection

LIB_DEPENDS =		devel/glib2 \
			multimedia/gstreamer1/core \
			net/gupnp/igd

# avoid picking up GnuTLS over LibreSSL
CONFIGURE_ARGS +=	-Dcrypto-library=openssl

# unset default [docker,veth,virbr,vnet] to respect vether(4), vnet(4/sparc64)
CONFIGURE_ARGS +=	-Dignored-network-interface-prefix=''

CONFIGURE_ARGS +=	-Dexamples=disabled \
			-Dgtk_doc=disabled

.include <bsd.port.mk>
