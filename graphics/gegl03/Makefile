# $OpenBSD: Makefile,v 1.6 2015/06/16 09:09:45 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		graph based image processing framework (API version 0.3)

V=			0.3.0
DISTNAME=		gegl-${V}
PKGNAME=		gegl03-${V}
EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  gegl-0.3             0.0      # 299.1

API_VERSION=		0.3
SUBST_VARS=		API_VERSION

CATEGORIES=		graphics devel

HOMEPAGE=		http://gegl.org/

# GPLv3/LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender babl-0.1 cairo croco-0.6 expat ffi
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += jasper jpeg json-glib-1.0 lcms2 lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += rsvg-2 xcb xcb-render xcb-shm xml2 z

MASTER_SITES=		http://download.gimp.org/pub/gegl/${API_VERSION}/

MODULES=		devel/gettext \
			textproc/intltool \
			x11/gnome

MODGNOME_TOOLS=		vala gobject-introspection

USE_GMAKE=		Yes

BUILD_DEPENDS=		graphics/exiv2

LIB_DEPENDS=		devel/json-glib \
			graphics/babl \
			graphics/lcms2 \
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

CONFIGURE_ARGS=		--without-lensfun \
			--without-openexr \
			--without-sdl \
			--without-libopenraw \
			--without-graphviz \
			--without-libavformat \
			--without-libv4l \
			--without-libspiro \
			--without-umfpack \
			--without-webp

# does fishy things (git(1), grabbing the X display...)
CONFIGURE_ARGS +=	--disable-docs

# be safe until proven stable
CONFIGURE_ARGS +=	--enable-mmx \
			--disable-sse

post-install:
	rm ${PREFIX}/lib/gegl-${API_VERSION}/*.{a,la}
# fix conflict with graphics/gegl; we currently only care about the libraries
	rm -rf ${PREFIX}/bin/

.include <bsd.port.mk>
