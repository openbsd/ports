# $OpenBSD: Makefile,v 1.28 2019/07/12 20:46:20 sthen Exp $

COMMENT=	city simulation game

DISTNAME=	lincity-ng-2.0
REVISION =	12
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games x11

HOMEPAGE=	https://github.com/lincity-ng/lincity-ng

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lincity-ng.berlios/}

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	GL SDL X11 c iconv intl m pthread ${COMPILER_LIBCXX} xcb z \
		SDL_gfx SDL_image SDL_mixer SDL_ttf physfs xml2

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf \
		devel/physfs \
		textproc/libxml
BUILD_DEPENDS=	devel/gettext,-tools \
		devel/jam
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
