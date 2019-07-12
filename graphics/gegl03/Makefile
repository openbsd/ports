# $OpenBSD: Makefile,v 1.36 2019/07/12 20:46:59 sthen Exp $

PORTROACH=		limit:^0\.3

COMMENT=		graph based image processing framework (API version 0.3)

V=			0.3.34
DISTNAME=		gegl-${V}
PKGNAME=		gegl03-${V}
EXTRACT_SUFX=		.tar.bz2
REVISION=		2

SHARED_LIBS +=  gegl-0.3             0.6      # 332.0

API_VERSION=		0.3
SUBST_VARS=		API_VERSION

CATEGORIES=		graphics devel

HOMEPAGE=		http://gegl.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3/LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xrender babl-0.1 cairo croco-0.6 expat ffi
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += iconv intl jasper jpeg json-glib-1.0 lcms2 lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += raw rsvg-2 ${COMPILER_LIBCXX} tiff webp xcb xcb-render
WANTLIB += xcb-shm xml2 z fribidi

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		http://download.gimp.org/pub/gegl/${API_VERSION}/

MODULES=		x11/gnome

MODGNOME_TOOLS=		vala gobject-introspection

USE_GMAKE=		Yes

BUILD_DEPENDS=		graphics/libgexiv2

LIB_DEPENDS=		devel/json-glib \
			graphics/babl \
			graphics/lcms2 \
			graphics/libraw \
			graphics/libwebp \
			x11/gnome/librsvg

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_header_execinfo_h="no" \
			ac_cv_path_ASCIIDOC="no" \
			ac_cv_path_W3M="no" \
			ac_cv_path_ENSCRIPT="no" \
			ac_cv_prog_RUBY="" \
			ac_cv_path_DOT="no"

CONFIGURE_ARGS=		--enable-mmx \
			--without-lensfun \
			--without-openexr \
			--without-sdl \
			--without-graphviz \
			--without-libavformat \
			--without-libv4l \
			--without-libspiro \
			--without-umfpack \
			--without-lua

# does fishy things (git(1), grabbing the X display...)
CONFIGURE_ARGS +=	--disable-docs

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	--enable-sse
.else
CONFIGURE_ARGS +=	--disable-sse
.endif

post-install:
	rm ${PREFIX}/lib/gegl-${API_VERSION}/*.{a,la} \
		${PREFIX}/lib/libgegl-{npd,sc}-${API_VERSION}.{a,la}
# fix conflict with graphics/gegl; we currently only care about the libraries
	rm -rf ${PREFIX}/bin/

.include <bsd.port.mk>
