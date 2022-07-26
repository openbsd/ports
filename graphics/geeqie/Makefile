COMMENT=		lightweight Gtk+3 based image viewer

V=			1.7.3
DISTNAME=		geeqie-${V}
EXTRACT_SUFX=		.tar.xz
CATEGORIES=		graphics
REVISION=		0
EPOCH=			0

HOMEPAGE=		https://www.geeqie.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 c cairo cairo-gobject exiv2
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz heif intl jpeg lcms2 m openjp2 pango-1.0
WANTLIB += pangocairo-1.0 raw tiff

COMPILER=		base-clang ports-gcc base-gcc

MASTER_SITES=		https://github.com/BestImageViewer/geeqie/releases/download/v${V}/

MODULES=		textproc/intltool

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/xdg-utils \
			graphics/ImageMagick \
			graphics/exiftran

LIB_DEPENDS=		graphics/exiv2 \
			graphics/libraw \
			graphics/openjp2 \
			multimedia/libheif \
			x11/gtk+3

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--disable-doxygen-doc \
			--disable-doxygen-html \
			--disable-archive \
			--disable-lirc \
			--disable-lua \
			--disable-ffmpegthumbnailer \
			--disable-gpu-accel \
			--disable-pdf \
			--disable-djvu \
			--disable-webp \
			--enable-gtk3 \
			--with-htmldir=${PREFIX}/share/doc/geeqie \
			--with-readmedir=${PREFIX}/share/doc/geeqie

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
AUTORECONF=		./autogen.sh
MAKE_ENV=		MKDIR_P='mkdir -p'

# XXX
# lxml.ElementInclude.FatalIncludeError: cannot load 'GuideMainWindowFilePane.xml' as 'xml'
CONFIGURE_ENV +=	ac_cv_path_GNOME_DOC_TOOL=

SEPARATE_BUILD=		Yes

post-extract:
	sed -i 's,bash,sh,g' ${WRKSRC}/version.sh
	sed -i 's,./create-doxygen-lua-api.sh,,' ${WRKSRC}/doc/Makefile.am
	sed -i 's,-Werror ,,g' ${WRKSRC}/configure.ac

post-install:
	rm -r ${PREFIX}/share/doc/

.include <bsd.port.mk>
