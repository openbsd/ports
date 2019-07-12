# $OpenBSD: Makefile,v 1.71 2019/07/12 20:46:56 sthen Exp $

COMMENT=		vector graphics library

DISTNAME=		cairo-1.16.0

CATEGORIES=		graphics
DPB_PROPERTIES=		parallel
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=  cairo                13.0     # 11602.0
SHARED_LIBS +=  cairo-gobject        2.0      # 11602.0
SHARED_LIBS +=  cairo-script-interpreter 2.0  # 11602.0

HOMEPAGE=		http://cairographics.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xrender c expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 iconv intl lzo2 m pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES=		https://cairographics.org/releases/ \
			https://cairographics.org/snapshots/

USE_GMAKE=		Yes

LIB_DEPENDS=		archivers/lzo2 \
			devel/glib2 \
			graphics/png

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS=		--disable-valgrind

# needed for firefox
CONFIGURE_ARGS +=	--enable-tee

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/cairo.pc.in

post-install:
	rm ${PREFIX}/lib/cairo/*.{a,la}

.include <bsd.port.mk>
