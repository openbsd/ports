COMMENT=		vector graphics library

GNOME_PROJECT=		cairo
GNOME_VERSION=		1.17.8
REVISION=		0

CATEGORIES=		graphics
DPB_PROPERTIES=		parallel

SHARED_LIBS += cairo                     13.3 # 2.11708.0
SHARED_LIBS += cairo-gobject             2.1 # 2.11708.0
SHARED_LIBS += cairo-script-interpreter  2.1 # 2.11708.0

HOMEPAGE=		http://cairographics.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE=	Yes

SITES=			https://cairographics.org/snapshots/

WANTLIB += X11 Xext Xrender fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += lzo2 m pixman-1 png pthread xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/meson \
			x11/gnome

USE_GMAKE=		Yes

LIB_DEPENDS=		archivers/lzo2 \
			devel/glib2 \
			graphics/png

CONFIGURE_ARGS=		-Dspectre=disabled \
			-Ddwrite=disabled

# needs print/py-fonttools, poppler-glib, librsvg-2.0
CONFIGURE_ARGS +=	-Dtests=disabled

# needs devel/gdb
CONFIGURE_ARGS +=	-Dsymbol-lookup=disabled

# needed for arch with ld.bfd 
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"

# XXX fatal error: 'lzo/lzo2a.h' file not found
CFLAGS +=		-I${LOCALBASE}/include

# XXX missing in the tarball
# https://gitlab.freedesktop.org/cairo/cairo/-/blob/master/meson-cc-tests/check-unused-result.c
post-extract:
	cp ${FILESDIR}/check-unused-result.c \
		${WRKSRC}/meson-cc-tests/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/meson.build

# XXX
post-install:
	chmod +x ${PREFIX}/bin/cairo-trace

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
