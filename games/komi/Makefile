# $OpenBSD: Makefile,v 1.5 2010/11/08 15:54:54 espie Exp $

COMMENT =	Komi the Space Frog

DISTNAME =	komi-1.04
REVISION =	1
CATEGORIES =	games

HOMEPAGE =	http://komi.sourceforge.net/

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=komi/}

WANTLIB =	SDL c pthread SDL_mixer.>=3

LIB_DEPENDS =	::devel/sdl-mixer

USE_GROFF =	Yes
NO_REGRESS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
