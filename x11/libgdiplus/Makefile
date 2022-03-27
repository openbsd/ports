COMMENT=	GDI+ comptible API

DISTNAME=	libgdiplus-6.0.5
REVISION=	0

CATEGORIES=	x11 devel

SHARED_LIBS +=	gdiplus	2.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/Libgdiplus

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv2 and Mozilla Public License 1.1
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB =  X11 Xau Xdmcp Xext Xrender cairo exif expat fontconfig
WANTLIB += freetype gif glib-2.0 iconv intl jpeg lzma m pcre pixman-1
WANTLIB += png pthread tiff xcb xcb-render xcb-shm z zstd

MASTER_SITES=	http://download.mono-project.com/sources/libgdiplus/

LIB_DEPENDS=	devel/gettext,-runtime \
		graphics/cairo \
		graphics/tiff \
		graphics/libexif \
		graphics/giflib

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"

.include <bsd.port.mk>
