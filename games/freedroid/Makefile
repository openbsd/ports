COMMENT=	clone of the Commodore 64 game paradroids

GH_ACCOUNT=	ReinhardPrix
GH_PROJECT=	FreedroidClassic
GH_TAGNAME=	release-1.2.1

PKGNAME=	freedroid-1.2.1

CATEGORIES=	games x11

HOMEPAGE=	https://www.freedroid.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_gfx SDL_image SDL_mixer c jpeg m png pthread
WANTLIB += vorbis z

CONFIGURE_STYLE= autoreconf
AUTORECONF=	 ${WRKSRC}/autogen.sh

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16

LIB_DEPENDS=	devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer

post-extract:
	touch ${WRKSRC}/NEWS

.include <bsd.port.mk>
