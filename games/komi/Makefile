# $OpenBSD: Makefile,v 1.7 2011/03/19 17:38:07 ajacoutot Exp $

COMMENT =	Komi the Space Frog

DISTNAME =	komi-1.04
REVISION =	2
CATEGORIES =	games

HOMEPAGE =	http://komi.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=komi/}

WANTLIB =	SDL c pthread SDL_mixer>=3

LIB_DEPENDS =	devel/sdl-mixer

USE_GROFF =	Yes
NO_REGRESS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
