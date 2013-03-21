# $OpenBSD: Makefile,v 1.10 2013/03/21 08:46:34 ajacoutot Exp $

COMMENT=		audio/video communications framework

DISTNAME=		farstream-0.2.0
CATEGORIES=		net devel

SHARED_LIBS +=	farstream-0.2        0.0      # 2.0

API_VERSION=		0.2
SUBST_VARS+=		API_VERSION

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/Farstream

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.freedesktop.org/software/farstream/releases/farstream/

MODULES=		devel/gettext \
			lang/python

MODPY_ADJ_FILES=	configure

WANTLIB += e2fs-uuid ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gstbase-1.0 gstnet-1.0 gstreamer-1.0 gstrtp-1.0
WANTLIB += gthread-2.0 gupnp-1.0 gupnp-igd-1.0 m nice pcre pthread
WANTLIB += soup-2.4 xml2 z

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			net/libnice>=0.1.3

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.68

# regen configure so it will detect the right python version
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gupnp \
			--enable-introspection

post-install:
	rm ${PREFIX}/lib/farstream-${API_VERSION}/*.{a,la}

.include <bsd.port.mk>
