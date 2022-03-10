# $OpenBSD: Makefile,v 1.42 2022/03/10 12:03:32 kn Exp $

COMMENT =		GLib ICE implementation
DISTNAME =		libnice-0.1.18
CATEGORIES =		net
REVISION =		0

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

.include <bsd.port.arch.mk>
# disable meson's default of using "-Wl,--as-needed" on ld.bfd arches;
# build failures due to undefined references are often seen.
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-Db_asneeded=false
.endif

.include <bsd.port.mk>
