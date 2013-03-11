# $OpenBSD: Makefile,v 1.12 2013/03/11 11:07:38 espie Exp $

COMMENT =	clone of arcade game 'Defender' with a Linux theme

DISTNAME =	defendguin-0.0.12
CATEGORIES =	games x11

HOMEPAGE =	http://www.newbreedsoftware.com/defendguin/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	SDL c m pthread SDL_mixer

MASTER_SITES =	ftp://ftp.billsgames.com/unix/x/defendguin/src/

LIB_DEPENDS =	devel/sdl-mixer

USE_GMAKE =	Yes
USE_GROFF =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
