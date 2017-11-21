# $OpenBSD: Makefile,v 1.31 2017/11/21 00:13:00 naddy Exp $

COMMENT=		Nebulous rewrite of Tower Toppler

DISTNAME=		toppler-1.1.6
REVISION=		2
CATEGORIES=		games

HOMEPAGE=		http://toppler.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += FLAC SDL SDL_mixer c iconv intl m ogg pthread smpeg sndio
WANTLIB += ${COMPILER_LIBCXX} usbhid vorbis vorbisfile z mikmod

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=toppler/}

LIB_DEPENDS=		audio/libmikmod \
			devel/sdl-mixer
RUN_DEPENDS=		devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
LOCALSTATEDIR=		${BASELOCALSTATEDIR}/games

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/toppler
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/toppler/toppler.hsc

.include <bsd.port.mk>
