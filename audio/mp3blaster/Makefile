# $OpenBSD: Makefile,v 1.30 2019/07/12 20:43:36 sthen Exp $

COMMENT=	text console audio player with an interactive interface

DISTNAME=	mp3blaster-3.2.6
REVISION=	3
CATEGORIES=	audio
HOMEPAGE=	http://mp3blaster.sourceforge.net/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} c m curses ogg pthread sidplay sndio vorbis vorbisfile

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3blaster/}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	audio/libsidplay \
		audio/libvorbis

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9
CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS=	--without-esd \
		--without-oss \
		--without-sdl \
		--with-sndio
CONFIGURE_ENV+=	ac_cv_lib_ossaudio_main=no

post-extract:
	@cp ${FILESDIR}/sndioplayer.cc ${WRKSRC}/mpegsound
	@cp ${FILESDIR}/sndiomixer.cc ${WRKSRC}/nmixer

.include <bsd.port.mk>
