# $OpenBSD: Makefile,v 1.14 2013/10/11 23:49:38 naddy Exp $

COMMENT=	city simulation game

DISTNAME=	lincity-ng-2.0
REVISION =	3
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games x11

HOMEPAGE=	http://lincity-ng.berlios.de/wiki/index.php/Main_Page

MASTER_SITES=	${MASTER_SITE_BERLIOS:=lincity-ng/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	GL SDL X11 c m pthread pthread-stubs stdc++ xcb z \
		SDL_gfx SDL_image SDL_mixer SDL_ttf physfs xml2

MODULES=	converters/libiconv \
		devel/gettext

LIB_DEPENDS=	devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf \
		devel/physfs \
		textproc/libxml
BUILD_DEPENDS=	devel/jam
RUN_DEPENDS=	devel/desktop-file-utils
NO_TEST=	Yes

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
