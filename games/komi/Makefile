# $OpenBSD: Makefile,v 1.8 2013/03/11 11:07:39 espie Exp $

COMMENT =	Komi the Space Frog

DISTNAME =	komi-1.04
REVISION =	2
CATEGORIES =	games

HOMEPAGE =	http://komi.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=komi/}

WANTLIB =	SDL c pthread SDL_mixer>=3

LIB_DEPENDS =	devel/sdl-mixer

USE_GROFF =	Yes
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
