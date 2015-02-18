# $OpenBSD: Makefile,v 1.17 2015/02/18 16:15:37 naddy Exp $

COMMENT=	text console audio player with an interactive interface

DISTNAME=	mp3blaster-3.2.5
REVISION=	0
CATEGORIES=	audio
HOMEPAGE=	http://mp3blaster.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ncurses ogg pthread sidplay sndio stdc++ vorbis vorbisfile

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3blaster/}

LIB_DEPENDS=	audio/libsidplay \
		audio/libvorbis

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9
CONFIGURE_STYLE=autoconf automake
CONFIGURE_ARGS=	--without-esd \
		--without-oss \
		--without-sdl \
		--with-sndio
CONFIGURE_ENV+=	ac_cv_lib_ossaudio_main=no
USE_GROFF =	Yes

post-extract:
	@cp ${FILESDIR}/sndioplayer.cc ${WRKSRC}/mpegsound
	@cp ${FILESDIR}/sndiomixer.cc ${WRKSRC}/nmixer

AUTO_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	@echo "Running aclocal-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} aclocal

pre-configure:
	@echo "Running automake-${AUTOMAKE_VERSION} in ${WRKSRC}"
	@cd ${WRKSRC}; ${AUTO_ENV} automake --foreign

.include <bsd.port.mk>
