COMMENT=		lightweight Gtk+3 based image viewer

DISTNAME=		geeqie-1.6
EXTRACT_SUFX=		.tar.xz
CATEGORIES=		graphics
EPOCH=			0
REVISION=		0

HOMEPAGE=		http://geeqie.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 c cairo cairo-gobject exiv2
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz intl jpeg lcms2 m openjp2 pango-1.0
WANTLIB += pangocairo-1.0 tiff

COMPILER=		base-clang ports-gcc base-gcc

MASTER_SITES=		http://geeqie.org/

MODULES=		textproc/intltool

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/xdg-utils \
			graphics/ImageMagick \
			graphics/exiftran

LIB_DEPENDS=		graphics/exiv2 \
			graphics/openjp2 \
			x11/gtk+3

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--disable-doxygen-doc \
			--disable-lirc \
			--disable-lua \
			--disable-ffmpegthumbnailer \
			--disable-gpu-accel \
			--disable-pdf \
			--disable-djvu \
			--disable-heif \
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

post-install:
	rm -rf ${PREFIX}/share/doc/

.include <bsd.port.mk>
