COMMENT=	clone of atari game
DISTNAME=	moon-lander-1.0
PKGNAME=	moonlander-1.0
REVISION=	3
CATEGORIES=	games x11
MASTER_SITES=	http://downloads.daveblood.com/lunar_lander/

FIX_EXTRACT_PERMISSIONS=	yes

HOMEPAGE=	http://magigames.org/moonlander.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_image SDL_mixer c m pthread

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
