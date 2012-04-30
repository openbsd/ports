# $OpenBSD: Makefile,v 1.16 2012/04/30 09:38:13 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	GLib ICE implementation

DISTNAME =	libnice-0.1.2
SHARED_LIBS +=  nice                 1.1      # 10.2
CATEGORIES =	net

HOMEPAGE =	http://nice.freedesktop.org/

MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# LGPLv2.1/MPLv1.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c e2fs-uuid ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gstbase-0.10 gstreamer-0.10 gthread-2.0 gupnp-1.0
WANTLIB += gupnp-igd-1.0 m pcre soup-2.4 xml2 z

MASTER_SITES =		${HOMEPAGE}/releases/

MODULES =		devel/gettext

LIB_DEPENDS =		multimedia/gstreamer-0.10/core \
			net/gupnp/igd

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED} \
			--disable-static \
			--with-gstreamer

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
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
