# $OpenBSD: Makefile,v 1.4 2017/05/04 21:40:47 espie Exp $

COMMENT =	abstract puzzle game

DISTNAME =	chroma-1.13
REVISION =	0
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	games x11

HOMEPAGE =	http://level7.org.uk/chroma/

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${HOMEPAGE}/download/

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	devel/sdl-image
MODULES =	devel/gettext
CFLAGS +=	-fgnu89-inline

WANTLIB +=	SDL SDL_image c freetype ncurses pthread z

.include <bsd.port.mk>
