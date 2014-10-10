# $OpenBSD: Makefile,v 1.17 2014/10/10 12:14:41 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		audio/video communications framework

DISTNAME=		farstream-0.2.4
REVISION=		0

CATEGORIES=		net devel

SHARED_LIBS +=  farstream-0.2        0.1      # 3.1

API_VERSION=		0.2
SUBST_VARS+=		API_VERSION

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/Farstream

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.freedesktop.org/software/farstream/releases/farstream/

MODULES=		devel/gettext

WANTLIB += uuid ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gstbase-1.0 gstnet-1.0 gstreamer-1.0 gstrtp-1.0
WANTLIB += gthread-2.0 gupnp-1.0 gupnp-igd-1.0 m nice pcre pthread
WANTLIB += soup-2.4 xml2 z sqlite3

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			net/libnice
TEST_DEPENDS=		multimedia/gstreamer1/plugins-bad

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gupnp \
			--enable-introspection

post-install:
	rm ${PREFIX}/lib/farstream-${API_VERSION}/*.{a,la}
	rm ${PREFIX}/lib/gstreamer-1.0/*.{a,la}

.include <bsd.port.mk>
