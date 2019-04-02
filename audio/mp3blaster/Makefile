# $OpenBSD: Makefile,v 1.27 2019/04/02 06:49:47 naddy Exp $

COMMENT=	text console audio player with an interactive interface

DISTNAME=	mp3blaster-3.2.6
REVISION=	2
CATEGORIES=	audio
HOMEPAGE=	http://mp3blaster.sourceforge.net/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ncurses ogg pthread sidplay sndio ${COMPILER_LIBCXX} vorbis vorbisfile

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3blaster/}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS=	audio/libsidplay \
		audio/libvorbis

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-esd \
		--without-oss \
		--without-sdl \
		--with-sndio
CONFIGURE_ENV+=	ac_cv_lib_ossaudio_main=no

post-extract:
	@cp ${FILESDIR}/sndioplayer.cc ${WRKSRC}/mpegsound
	@cp ${FILESDIR}/sndiomixer.cc ${WRKSRC}/nmixer

do-gen:
	cd ${WRKSRC}; ${AUTOCONF_ENV} autoreconf -fi

.include <bsd.port.mk>
