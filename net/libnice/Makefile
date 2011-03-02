# $OpenBSD: Makefile,v 1.9 2011/03/02 07:32:04 jasper Exp $

SHARED_ONLY =	Yes

COMMENT =	GLib ICE implementation

DISTNAME =	libnice-0.1.0
SHARED_LIBS +=  nice                 1.1
CATEGORIES =	net

HOMEPAGE =	http://nice.freedesktop.org/

MAINTAINER =	Tom Murphy <openbsd@pertho.net>

# LGPLv2.1/MPLv1.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/

WANTLIB += c glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m pcre
WANTLIB += xml2 z gstbase-0.10 gstreamer-0.10

MODULES =		devel/gettext

LIB_DEPENDS =		multimedia/gstreamer-0.10/core
BUILD_DEPENDS =		textproc/gsed

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED} \
			--disable-static \
			--disable-silent-rules \
			--disable-gupnp \
			--with-gstreamer

USE_GMAKE =		yes
USE_LIBTOOL =		yes
LIBTOOL_FLAGS =		--tag=disable-static

.include <bsd.port.mk>
