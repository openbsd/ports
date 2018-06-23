# $OpenBSD: Makefile,v 1.59 2018/06/23 16:14:33 ajacoutot Exp $

COMMENT=	lame ain't an MP3 encoder
#'

DISTNAME=	lame-3.100

SHARED_LIBS +=  mp3lame              2.1      # 0.0

CATEGORIES=	audio

HOMEPAGE=	http://lame.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 - patent restriction
PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c curses iconv m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lame/}

LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --disable-cpml \
		--disable-decoder \
		--enable-frontend \
		--enable-dynamic-frontends \
		--disable-mp3x \
		--enable-mp3rtp \
		--without-dmalloc \
		--with-fileio=lame

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
CONFIGURE_ARGS+= --enable-nasm
.else
CONFIGURE_ARGS+= --disable-nasm
.endif

MAKE_FLAGS=	pkghtmldir=${TRUEPREFIX}/share/doc/lame

.include <bsd.port.mk>
