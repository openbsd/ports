# $OpenBSD: Makefile,v 1.25 2017/09/23 11:33:48 sthen Exp $

COMMENT=		audio/video communications framework

DISTNAME=		farstream-0.2.8
REVISION=		0

CATEGORIES=		net devel

SHARED_LIBS +=  farstream-0.2        1.2      # 5.0

API_VERSION=		0.2
SUBST_VARS+=		API_VERSION

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/Farstream

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gssdp-1.0 gstbase-1.0 gstnet-1.0 gstreamer-1.0 gstrtp-1.0
WANTLIB += gthread-2.0 gupnp-1.0 gupnp-igd-1.0 hogweed idn2 lzma
WANTLIB += m nettle nice p11-kit pcre pthread soup-2.4 sqlite3
WANTLIB += tasn1 unistring xml2 z

MASTER_SITES=		http://www.freedesktop.org/software/farstream/releases/farstream/

MODULES=		devel/gettext


BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			net/libnice>=0.1.8
TEST_DEPENDS=		multimedia/gstreamer1/plugins-bad

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-gupnp \
			--enable-introspection

post-install:
	rm ${PREFIX}/lib/farstream-${API_VERSION}/*.la
	rm ${PREFIX}/lib/gstreamer-1.0/*.la

.include <bsd.port.mk>
