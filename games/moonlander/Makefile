# $OpenBSD: Makefile,v 1.14 2020/03/20 16:44:23 naddy Exp $

COMMENT=	clone of atari game
DISTNAME=	moon-lander-1.0
PKGNAME=	moonlander-1.0
REVISION=	2
CATEGORIES=	games x11
MASTER_SITES=	http://downloads.daveblood.com/lunar_lander/

HOMEPAGE=	http://magigames.org/moonlander.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB= SDL X11 Xext c m pthread usbhid xcb SDL_image SDL_mixer

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/moon-lander

FLAVORS=	no_sound
FLAVOR?=

.if ${FLAVOR:Mno_sound}
CFLAGS+=	-DNOSOUND
.endif

do-configure:
	perl -pi -e 's,%%PREFIX%%,${PREFIX},g' ${WRKSRC}/moon_lander.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/moonlander ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/moonlander
	@cp -R ${WRKSRC}/{fonts,images,sounds} ${PREFIX}/share/moonlander

post-install:
	@find ${PREFIX}/share/moonlander -type f -exec chmod 444 {} +

.include <bsd.port.mk>
