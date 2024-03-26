COMMENT=		lightweight Gtk+3 based image viewer

V=			2.4
DISTNAME=		geeqie-${V}
EXTRACT_SUFX=		.tar.xz
CATEGORIES=		graphics
EPOCH=			0

HOMEPAGE=		https://www.geeqie.org/

MAINTAINER=		Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cairo  exiv2
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 heif intl jpeg lcms2 m openjp2 pango-1.0
WANTLIB += pangocairo-1.0 raw tiff

# C++14
COMPILER=		base-clang ports-gcc

SITES=	https://github.com/BestImageViewer/geeqie/releases/download/v${V}/

MODULES=		devel/meson

# vim is needed for xxd
BUILD_DEPENDS=		devel/gettext,-tools \
			editors/vim,-main
RUN_DEPENDS=		devel/desktop-file-utils \
			devel/xdg-utils \
			graphics/ImageMagick \
			graphics/exiftran \
			x11/gtk+4,-guic

LIB_DEPENDS=		graphics/exiv2 \
			graphics/libraw \
			graphics/openjp2 \
			multimedia/libheif \
			x11/gtk+3

CONFIGURE_ARGS+=	-Darchive=disabled \
			-Ddjvu=disabled \
			-Dexecinfo=disabled \
			-Dgps-map=disabled \
			-Djpegxl=disabled \
			-Dlua=disabled \
			-Dpdf=disabled \
			-Dspell=disabled \
			-Dvideothumbnailer=disabled \
			-Dwebp=disabled \
			-Dgq_htmldir=${PREFIX}/share/doc/geeqie \
			-Dgq_helpdir=${PREFIX}/share/doc/geeqie

post-extract:
	sed -i 's,bash,sh,g' ${WRKSRC}/version.sh

post-install:
	rm -r ${PREFIX}/share/doc/

.include <bsd.port.mk>
