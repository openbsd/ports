# $OpenBSD: Makefile,v 1.64 2017/06/27 13:14:24 ajacoutot Exp $

COMMENT=		vector graphics library

DISTNAME=		cairo-1.14.10

CATEGORIES=		graphics
DPB_PROPERTIES=		parallel
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=  cairo                12.3     # 11402.10
SHARED_LIBS +=  cairo-gobject        1.1      # 11402.10
SHARED_LIBS +=  cairo-script-interpreter 1.1  # 11402.10

HOMEPAGE=		http://cairographics.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xrender c expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 iconv intl lzo2 m pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES=		http://cairographics.org/releases/

USE_GMAKE=		Yes

LIB_DEPENDS=		archivers/lzo2 \
			devel/glib2 \
			graphics/png

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS=-L${LOCALBASE}/lib CFLAGS=-I${LOCALBASE}/include
CONFIGURE_ARGS=		--disable-valgrind

# needed for firefox
CONFIGURE_ARGS +=	--enable-tee

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/cairo.pc.in

post-install:
	rm ${PREFIX}/lib/cairo/*.{a,la}

.include <bsd.port.mk>
