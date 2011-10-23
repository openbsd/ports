# $OpenBSD: Makefile,v 1.45 2011/10/23 09:14:19 ajacoutot Exp $

COMMENT=	lame ain't an MP3 encoder

DISTNAME=	lame-3.99

SHARED_LIBS +=  mp3lame              2.0      # 0.0

CATEGORIES=	audio

HOMEPAGE=	http://lame.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - patent restriction
PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent, http://mp3licensing.com/royalty/
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m ncurses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lame/}

MODULES=	converters/libiconv

USE_GMAKE=	Yes
USE_GROFF =	Yes
USE_LIBTOOL=	Yes

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
