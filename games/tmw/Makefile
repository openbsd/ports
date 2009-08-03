# $OpenBSD: Makefile,v 1.8 2009/08/03 11:48:56 ajacoutot Exp $

COMMENT-main=	free open source 2D MMORPG
COMMENT-music=	music addon for TMW

DISTNAME=	tmw-0.0.29.1

V_MUSIC=	0.2

PKGNAME-main=	${DISTNAME}
PKGNAME-music=	tmw-music-${V_MUSIC}

CATEGORIES=	games x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		tmwmusic-${V_MUSIC}${EXTRACT_SUFX}

HOMEPAGE=	http://www.themanaworld.org/

MAINTAINER=	Jonathan Armani <dbd@asystant.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL SDL crypto c m png pthread ssl stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=themanaworld/}

MULTI_PACKAGES=	-main -music

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	SDL_image::devel/sdl-image \
		SDL_net::devel/sdl-net \
		SDL_mixer::devel/sdl-mixer \
		SDL_ttf::devel/sdl-ttf \
		guichan,guichan_sdl::devel/guichan \
		curl::net/curl \
		idn::devel/libidn \
		physfs::devel/physfs \
		xml2::textproc/libxml

WANTLIB-music=
RUN_DEPENDS-music=::${BASE_PKGPATH}
LIB_DEPENDS-music=
PKG_ARCH-music=*

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="`sdl-config --libs` -liconv -lintl"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tmw/data/music
	find ${WRKDIR}/tmwmusic-${V_MUSIC}/data/music -name \*.ogg \
		-exec ${INSTALL_DATA} {} ${PREFIX}/share/tmw/data/music \;

.include <bsd.port.mk>
