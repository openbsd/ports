# $OpenBSD: Makefile,v 1.38 2017/04/04 21:23:06 ajacoutot Exp $

COMMENT =		GLib ICE implementation

DISTNAME =		libnice-0.1.14

SHARED_LIBS +=  nice                 3.0      # 17.0

CATEGORIES =		net

HOMEPAGE =		http://nice.freedesktop.org/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1/MPLv1.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gssdp-1.0 gstbase-1.0 gstreamer-1.0 gthread-2.0 gupnp-1.0
WANTLIB += gupnp-igd-1.0 hogweed iconv idn2 intl lzma m nettle
WANTLIB += p11-kit pcre pthread soup-2.4 sqlite3 tasn1 unistring
WANTLIB += xml2 z

MASTER_SITES =		http://nice.freedesktop.org/releases/

BUILD_DEPENDS =		devel/gobject-introspection

LIB_DEPENDS =		multimedia/gstreamer1/core \
			net/gupnp/igd

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--with-gstreamer \
			--without-gstreamer-0.10

USE_GMAKE =		Yes

# configure sets -Werror
CFLAGS +=		-Wno-error

PORTHOME =		${WRKBUILD}

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.{a,la}
# don't install example binaries
	rm ${PREFIX}/bin/*-example

.include <bsd.port.mk>
