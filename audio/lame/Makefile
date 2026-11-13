COMMENT=	lame ain't an MP3 encoder
#'

DISTNAME=	lame-4.1beta1

SHARED_LIBS +=  mp3lame              2.3      # 0.0

CATEGORIES=	audio

HOMEPAGE=	https://lame.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 - patent restriction
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv m mpg123

SITES=		${SITE_SOURCEFORGE:=lame/}

BUILD_DEPENDS=	devel/cmocka

LIB_DEPENDS=	audio/mpg123 \
		converters/libiconv

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --disable-cpml \
		--disable-mp3x \
		--enable-mp3rtp \
		--without-dmalloc \
		--with-fileio=lame \
		--enable-unit-tests

.include <bsd.port.mk>
