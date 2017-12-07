# $OpenBSD: Makefile,v 1.6 2017/12/07 13:12:44 espie Exp $

COMMENT =	abstract puzzle game

DISTNAME =	chroma-1.13
REVISION =	1
EXTRACT_SUFX =	.tar.bz2
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES =	games x11

HOMEPAGE =	http://level7.org.uk/chroma/

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  SDL SDL_image c freetype iconv intl ncurses pthread z

MASTER_SITES=	${HOMEPAGE}/download/

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	devel/gettext \
		devel/sdl-image
CFLAGS +=	-fgnu89-inline


.include <bsd.port.mk>
