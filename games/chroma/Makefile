# $OpenBSD: Makefile,v 1.2 2013/03/11 11:07:38 espie Exp $

COMMENT =	abstract puzzle game

DISTNAME =	chroma-1.13
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	games x11

HOMEPAGE =	http://level7.org.uk/chroma/

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${HOMEPAGE}/download/

CONFIGURE_STYLE =	gnu
LIB_DEPENDS =	devel/sdl-image \
		devel/gettext

WANTLIB +=	SDL SDL_image c freetype intl ncurses pthread z

.include <bsd.port.mk>
