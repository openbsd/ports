# $OpenBSD: Makefile,v 1.20 2013/03/30 10:44:09 jasper Exp $

SHARED_ONLY =	Yes

COMMENT =	GLib ICE implementation

DISTNAME =	libnice-0.1.4
SHARED_LIBS +=  nice                 2.1      # 11.0
CATEGORIES =	net

HOMEPAGE =	http://nice.freedesktop.org/

MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# LGPLv2.1/MPLv1.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c e2fs-uuid ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gstbase-0.10 gstreamer-0.10 gthread-2.0 gupnp-1.0
WANTLIB += gupnp-igd-1.0 m pcre soup-2.4 xml2 z pthread
WANTLIB += gstbase-1.0 gstreamer-1.0

MASTER_SITES =		${HOMEPAGE}/releases/

MODULES =		devel/gettext

LIB_DEPENDS =		multimedia/gstreamer-0.10/core \
			multimedia/gstreamer1/core \
			net/gupnp/igd

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED} \
			--disable-static \
			--with-gstreamer \
			--without-gstreamer-0.10

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

pre-configure:
	perl -pi -e 's,-Wextra,,g;' \
		-e 's,-Wno-missing-field-initializers,,g;' \
	${WRKSRC}/Makefile.in ${WRKSRC}/agent/Makefile.in \
	${WRKSRC}/nice/Makefile.in ${WRKSRC}/random/Makefile.in \
	${WRKSRC}/socket/Makefile.in ${WRKSRC}/stun/Makefile.in \
	${WRKSRC}/stun/tests/Makefile.in ${WRKSRC}/stun/tools/Makefile.in \
	${WRKSRC}/tests/Makefile.in

.include <bsd.port.mk>
