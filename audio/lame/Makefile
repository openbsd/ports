# $OpenBSD: Makefile,v 1.52 2013/07/09 20:01:38 espie Exp $

COMMENT=	lame ain't an MP3 encoder

DISTNAME=	lame-3.99.5

SHARED_LIBS +=  mp3lame              2.1      # 0.1

CATEGORIES=	audio

HOMEPAGE=	http://lame.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2 - patent restriction
PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c m ncurses
LIBM_CHECK = powf log10f

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lame/}

MODULES=	converters/libiconv

USE_GMAKE=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-mp3rtp \
		--disable-mp3x \
		--with-fileio=lame

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
CONFIGURE_ARGS+= --enable-nasm
.else
CONFIGURE_ARGS+= --disable-nasm
.endif

MAKE_FLAGS=	pkghtmldir=${TRUEPREFIX}/share/doc/lame

.include <bsd.port.mk>
