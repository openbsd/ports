# $OpenBSD: Makefile,v 1.16 2019/07/12 20:46:16 sthen Exp $

COMMENT =	clone of arcade game 'Defender' with a Linux theme

DISTNAME =	defendguin-0.0.12
CATEGORIES =	games x11
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE =	http://www.newbreedsoftware.com/defendguin/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	SDL c m pthread SDL_mixer

MASTER_SITES =	ftp://ftp.tuxpaint.org/unix/x/defendguin/src/

LIB_DEPENDS =	devel/sdl-mixer

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
