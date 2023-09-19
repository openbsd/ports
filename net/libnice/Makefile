COMMENT =		GLib ICE implementation
DISTNAME =		libnice-0.1.21
REVISION =		1

CATEGORIES =		net

SHARED_LIBS +=		nice	4.2	# 10.13.1

WANTLIB += c crypto gio-2.0 glib-2.0 gobject-2.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gupnp-igd-1.6

HOMEPAGE =		https://libnice.freedesktop.org
DIST_SUBDIR =		libnice
SITES =			https://libnice.freedesktop.org/releases/
SITES.pr =		https://gitlab.freedesktop.org/libnice/libnice/-/
# merged "Fix build with clang"
PATCHFILES.pr =		fix-clang15-build-{commit/}f4e2838f.patch
# merged "Use ifr_index to fix build on OpenBSD"
PATCHFILES.pr +=	use-ifr_index-{merge_requests/}251.patch

PATCH_DIST_STRIP =	-p1

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# dual-licensed: MPL 1.1 + LGPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		devel/meson

BUILD_DEPENDS =		devel/gobject-introspection

LIB_DEPENDS =		devel/glib2 \
			multimedia/gstreamer1/core \
			net/gupnp/igd>=1.6.0

# avoid picking up GnuTLS over LibreSSL
CONFIGURE_ARGS +=	-Dcrypto-library=openssl

# unset default [docker,veth,virbr,vnet] to respect vether(4), vnet(4/sparc64)
CONFIGURE_ARGS +=	-Dignored-network-interface-prefix=''

CONFIGURE_ARGS +=	-Dexamples=disabled

.include <bsd.port.arch.mk>
# disable meson's default of using "-Wl,--as-needed" on ld.bfd arches;
# build failures due to undefined references are often seen.
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-Db_asneeded=false
.endif

.include <bsd.port.mk>
