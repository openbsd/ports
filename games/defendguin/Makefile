# $OpenBSD: Makefile,v 1.8 2010/10/18 18:00:17 espie Exp $

COMMENT =	clone of arcade game 'Defender' with a Linux theme

DISTNAME =	defendguin-0.0.12
CATEGORIES =	games x11

HOMEPAGE =	http://www.newbreedsoftware.com/defendguin/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	SDL c m pthread

MASTER_SITES =	ftp://ftp.billsgames.com/unix/x/defendguin/src/

LIB_DEPENDS =	SDL_mixer::devel/sdl-mixer

USE_X11 =	Yes
USE_GMAKE =	Yes
USE_GROFF =	Yes

NO_REGRESS =	Yes

.include <bsd.port.mk>
