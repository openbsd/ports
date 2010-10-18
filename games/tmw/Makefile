# $OpenBSD: Makefile,v 1.11 2010/10/18 18:00:19 espie Exp $

COMMENT-main=	free open source 2D MMORPG
COMMENT-music=	music addon for TMW

DISTNAME=	tmw-0.0.29.1

V_MUSIC=	0.2

PKGNAME-main=	${DISTNAME}
REVISION-main=	1
PKGNAME-music=	tmw-music-${V_MUSIC}
REVISION-music=	0

CATEGORIES=	games x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		tmwmusic-${V_MUSIC}${EXTRACT_SUFX}

HOMEPAGE=	http://www.themanaworld.org/

MAINTAINER=	Jonathan Armani <armani@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL SDL SDL_image SDL_mixer SDL_net SDL_ttf c crypto curl guichan 
WANTLIB += guichan_sdl idn m physfs png pthread ssl stdc++ xml2 z 


MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=themanaworld/}

MULTI_PACKAGES=	-main -music

MODULES=	devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	::devel/sdl-image \
		::devel/sdl-net \
		::devel/sdl-mixer \
		::devel/sdl-ttf \
		::devel/guichan \
		::net/curl \
		::devel/libidn \
		::devel/physfs \
		::textproc/libxml

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
