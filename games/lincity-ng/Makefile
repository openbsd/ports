# $OpenBSD: Makefile,v 1.5 2009/08/10 06:31:42 kili Exp $

COMMENT=	city simulation game

DISTNAME=	lincity-ng-2.0
PKGNAME=	${DISTNAME}p0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games x11

HOMEPAGE=	http://lincity-ng.berlios.de/wiki/index.php/Main_Page

MASTER_SITES=	${MASTER_SITE_BERLIOS:=lincity-ng/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL SDL X11 c m pthread pthread-stubs stdc++ xcb z

MODULES=	converters/libiconv

LIB_DEPENDS=	SDL_gfx::devel/sdl-gfx \
		SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer \
		SDL_ttf::devel/sdl-ttf \
		physfs::devel/physfs \
		xml2::textproc/libxml
BUILD_DEPENDS=	::devel/jam
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
NO_REGRESS=	Yes

USE_X11=	Yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-liconv -pthread"
CONFIGURE_STYLE=gnu

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam -dx

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${ALL_FAKE_FLAGS} jam \
		install install_man

.include <bsd.port.mk>
