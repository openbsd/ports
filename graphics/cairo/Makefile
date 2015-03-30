# $OpenBSD: Makefile,v 1.57 2015/03/30 07:12:15 eric Exp $

COMMENT=		vector graphics library

DISTNAME=		cairo-1.14.2
SHARED_LIBS+=		cairo 12.3
SHARED_LIBS+=		cairo-gobject 1.1
SHARED_LIBS+=		cairo-script-interpreter 1.1
CATEGORIES=		graphics
DPB_PROPERTIES=		parallel
EXTRACT_SUFX=		.tar.xz

HOMEPAGE=		http://cairographics.org/

MAINTAINER=		Eric Faurot <eric@openbsd.org>

WANTLIB += X11 Xau Xdmcp Xext Xrender c expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 lzo2 m pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://cairographics.org/releases/

MODULES=		devel/gettext

USE_GMAKE=		Yes

LIB_DEPENDS=		archivers/lzo2 \
			devel/glib2 \
			graphics/png

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		LDFLAGS=-L${LOCALBASE}/lib CFLAGS=-I${LOCALBASE}/include

# needed for firefox
CONFIGURE_ARGS +=	--enable-tee

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/cairo.pc.in

post-install:
	rm ${PREFIX}/lib/cairo/*.{a,la}

.include <bsd.port.mk>
