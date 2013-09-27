# $OpenBSD: Makefile,v 1.4 2013/09/27 09:39:32 ajacoutot Exp $

COMMENT=		map-rendering engine for OpenStreetMap

DISTNAME=		memphis-0.2.3
SHARED_LIBS +=  memphis-0.2          0.0      # 0.2
CATEGORIES=		geo devel
REVISION=		0

HOMEPAGE=		http://trac.openstreetmap.ch/trac/memphis/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://wenner.ch/files/public/mirror/memphis/

MODULES=		devel/gettext

WANTLIB += X11 Xext Xrender cairo expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 m pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala

LIB_DEPENDS=		graphics/cairo

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-introspection \
			--enable-vala

post-install:
	rm ${PREFIX}/bin/example

.include <bsd.port.mk>
