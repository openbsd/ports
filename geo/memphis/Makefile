# $OpenBSD: Makefile,v 1.3 2013/03/21 08:45:17 ajacoutot Exp $

COMMENT=		map-rendering engine for OpenStreetMap

DISTNAME=		memphis-0.2.3
SHARED_LIBS +=  memphis-0.2          0.0      # 0.2
CATEGORIES=		geo devel

HOMEPAGE=		http://trac.openstreetmap.ch/trac/memphis/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://wenner.ch/files/public/mirror/memphis/

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += cairo drm expat ffi fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pixman-1 png pthread-stubs stdc++
WANTLIB += xcb xcb-render xcb-shm z

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS=		graphics/cairo

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection=yes \
			--disable-vala

.include <bsd.port.mk>