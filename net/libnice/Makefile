# $OpenBSD: Makefile,v 1.26 2014/04/01 14:52:10 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	GLib ICE implementation

DISTNAME =	libnice-0.1.5
REVISION =	1
SHARED_LIBS +=  nice                 2.2      # 13.0

CATEGORIES =	net

HOMEPAGE =	http://nice.freedesktop.org/

MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# LGPLv2.1/MPLv1.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c uuid ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gstbase-1.0 gstreamer-1.0 gthread-2.0 gupnp-1.0
WANTLIB += gupnp-igd-1.0 m pcre pthread soup-2.4 sqlite3 xml2
WANTLIB += z

MASTER_SITES =		${HOMEPAGE}/releases/

MODULES =		devel/gettext

LIB_DEPENDS =		multimedia/gstreamer1/core \
			net/gupnp/igd

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--with-gstreamer \
			--without-gstreamer-0.10

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=	ac_cv_path_GTKDOC_CHECK="" \
			ac_cv_path_GTKDOC_REBASE="" \
			ac_cv_path_GTKDOC_MKPDF=""

USE_GMAKE =		Yes

post-install:
	rm ${PREFIX}/lib/gstreamer-1.0/*.a
# don't install example binaries
	rm ${PREFIX}/bin/*-example

.include <bsd.port.mk>
