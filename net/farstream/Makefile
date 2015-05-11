# $OpenBSD: Makefile,v 1.21 2015/05/11 07:21:21 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		audio/video communications framework

DISTNAME=		farstream-0.2.7
REVISION=		1

CATEGORIES=		net devel

SHARED_LIBS +=  farstream-0.2        1.1      # 5.0

API_VERSION=		0.2
SUBST_VARS+=		API_VERSION

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/Farstream

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gstbase-1.0 gstnet-1.0 gstreamer-1.0 gstrtp-1.0 gthread-2.0
WANTLIB += gupnp-1.0 gupnp-igd-1.0 lzma m nice pcre pthread soup-2.4
WANTLIB += sqlite3 xml2 z

MASTER_SITES=		http://www.freedesktop.org/software/farstream/releases/farstream/

MODULES=		devel/gettext


BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			net/libnice>=0.1.8
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
