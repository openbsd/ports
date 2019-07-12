# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:14 sthen Exp $

COMMENT =	game engine recreation of Master of Orion 1
DISTNAME =	1oom-1.0
CATEGORIES =	games x11

HOMEPAGE =	https://kilgoretroutmaskreplicant.gitlab.io/plain-html/
MAINTAINER =	Max Fillinger <max@max-fillinger.net>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_mixer c readline

MASTER_SITES =	https://gitlab.com/KilgoreTroutMaskReplicant/1oom/uploads/13d2d645650929c6f7f08be356b62f66/

LIB_DEPENDS =	devel/sdl2-mixer

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-hwsdl1 \
			--disable-hwalleg4

# Create patch file so that the user can disable bug-compatibility with
# the original game.
post-build:
	cd ${WRKSRC} && ./src/1oom_pbxmake doc/pbxin_fixbugs.txt \
		fixbugs.pbx

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/1oom
	${INSTALL_DATA} ${WRKSRC}/fixbugs.pbx ${PREFIX}/share/1oom

.include <bsd.port.mk>
