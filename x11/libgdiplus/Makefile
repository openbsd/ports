COMMENT=	GDI+ comptible API

DISTNAME=	libgdiplus-6.1
REVISION=	1

CATEGORIES=	x11 devel

SHARED_LIBS +=	gdiplus	2.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/Libgdiplus

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv2 and Mozilla Public License 1.1
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB =  X11 Xau Xdmcp Xext Xrender cairo exif expat fontconfig
WANTLIB += freetype gif glib-2.0 iconv intl jpeg lzma m pcre2-8 pixman-1
WANTLIB += png pthread tiff xcb xcb-render xcb-shm z zstd graphite2
WANTLIB += ${COMPILER_LIBCXX} ffi gio-2.0 gmodule-2.0 gobject-2.0 z
WANTLIB += fribidi harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0

SITES=		http://download.mono-project.com/sources/libgdiplus/

LIB_DEPENDS=	devel/gettext,-runtime \
		devel/harfbuzz \
		devel/pango \
		graphics/cairo \
		graphics/tiff \
		graphics/libexif \
		graphics/giflib

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"

.include <bsd.port.mk>
