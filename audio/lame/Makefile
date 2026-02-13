COMMENT=	lame ain't an MP3 encoder
#'

# tarball generated from https://svn.code.sf.net/p/lame/svn/trunk/lame#revision=6531
DISTNAME=	lame-3.101pre6531

SHARED_LIBS +=  mp3lame              2.2      # 0.0

CATEGORIES=	audio

HOMEPAGE=	https://lame.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 - patent restriction
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv m mpg123

#SITES=		${SITE_SOURCEFORGE:=lame/}
SITES=		https://distfiles.bsdfrog.org/

LIB_DEPENDS=	audio/mpg123 \
		converters/libiconv

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --disable-cpml \
		--disable-mp3x \
		--enable-mp3rtp \
		--without-dmalloc \
		--with-fileio=lame

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
CONFIGURE_ARGS+= --enable-nasm
# gmake required for i386/ directory
USE_GMAKE=	Yes
.else
CONFIGURE_ARGS+= --disable-nasm
.endif

MAKE_FLAGS=	pkghtmldir=${TRUEPREFIX}/share/doc/lame

.include <bsd.port.mk>
