# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:20 sthen Exp $

COMMENT =	Komi the Space Frog

DISTNAME =	komi-1.04
REVISION =	2
CATEGORIES =	games

HOMEPAGE =	http://komi.sourceforge.net/

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=komi/}

WANTLIB =	SDL c pthread SDL_mixer>=3

LIB_DEPENDS =	devel/sdl-mixer

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
