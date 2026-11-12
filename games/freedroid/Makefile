COMMENT=	clone of the Commodore 64 game paradroids

# there is an sdl3 port (2.x) but we don't have sdl3-mixer yet
V=		1.9.2
GH_ACCOUNT=	ReinhardPrix
GH_PROJECT=	FreedroidClassic
GH_TAGNAME=	freedroid-$V-sdl2-port
PKGNAME=	freedroid-$V

CATEGORIES=	games x11

HOMEPAGE=	https://www.freedroid.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer c jpeg m png vorbis z

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.73
AUTOMAKE_VERSION= 1.19

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/sdl2-image \
		devel/sdl2-mixer

.include <bsd.port.mk>
