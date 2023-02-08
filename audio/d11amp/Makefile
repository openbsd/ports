COMMENT=	simple MP3 player

V=		0.61
DISTNAME=	d11amp_${V}
PKGNAME=	d11amp-${V}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	audio

HOMEPAGE=	https://www.dettus.net/d11amp
MAINTAINER=	Thomas Dettbarn <dettus@dettus.net>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo cairo-gobject gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 graphene-1.0 gtk-4 harfbuzz intl m mpg123
WANTLIB += pango-1.0 pangocairo-1.0 portaudio pthread zip

MASTER_SITES=	https://www.dettus.net/d11amp/

LIB_DEPENDS=	graphics/gdk-pixbuf2	\
		x11/gtk+4		\
		archivers/libzip	\
		audio/mpg123		\
		audio/portaudio-svn

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"
FAKE_FLAGS=	INSTALLMAN="${WRKINST}${PREFIX}/man" \
		DESTDIR=

TEST_ENV=	SHA256_CMD=sha256 TMP_DIR=/tmp/d11amp/
TEST_TARGET=	check

.include <bsd.port.mk>
