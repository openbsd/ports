# $OpenBSD: Makefile,v 1.1.1.1 2007/12/12 18:14:15 simon Exp $

COMMENT=	city simulation game

DISTNAME=	lincity-ng-1.1.2
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games

HOMEPAGE=	http://lincity-ng.berlios.de/wiki/index.php/Main_Page

MASTER_SITES=	${MASTER_SITE_BERLIOS:=lincity-ng/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL SDL X11 c m pthread stdc++ z

LIB_DEPENDS=	SDL_gfx::devel/sdl-gfx \
		SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer \
		SDL_ttf::devel/sdl-ttf \
		physfs::devel/physfs \
		xml2::textproc/libxml
BUILD_DEPENDS=	::devel/jam
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-pthread"
CONFIGURE_STYLE=gnu

do-build:
	cd ${WRKSRC} && jam

do-install:
	cd ${WRKSRC} && jam install install_man

.include <bsd.port.mk>
