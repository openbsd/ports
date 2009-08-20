# $OpenBSD: Makefile,v 1.2 2009/08/20 18:48:02 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	GLib ICE implementation

DISTNAME =	libnice-0.0.9
PKGNAME =	${DISTNAME}p0
SHARED_LIBS +=  nice                 0.0      # .5.0
CATEGORIES =	net

HOMEPAGE =	http://nice.freedesktop.org/

MAINTAINER =	Tom <tdmurphy4@gmail.com>

# LGPLv2.1/MPLv1.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/

WANTLIB += c glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m pcre
WANTLIB += xml2 z

MODULES =		devel/gettext

BUILD_DEPENDS =		::textproc/gsed

LIB_DEPENDS =		gstbase-0.10,gstreamer-0.10::multimedia/gstreamer-0.10/core

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED} \
			--disable-static \
			--disable-gupnp \
			--with-gstreamer

USE_GMAKE =		yes
USE_LIBTOOL =		yes
LIBTOOL_FLAGS =		--tag=disable-static

.include <bsd.port.mk>
