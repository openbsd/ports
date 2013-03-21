# $OpenBSD: Makefile,v 1.25 2013/03/21 08:45:17 ajacoutot Exp $

COMMENT=		Nebulous rewrite of Tower Toppler

DISTNAME=		toppler-1.1.3
REVISION =		2
CATEGORIES=		games

HOMEPAGE=		http://toppler.sourceforge.net/

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		SDL X11 Xau Xdmcp Xext Xrandr Xrender c m \
			mikmod ogg pthread pthread-stubs smpeg sndio stdc++ \
			usbhid vorbis vorbisfile xcb z SDL_mixer

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=toppler/}

LIB_DEPENDS=		devel/sdl-mixer
RUN_DEPENDS=		devel/desktop-file-utils

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
LOCALSTATEDIR=		${BASELOCALSTATEDIR}/games

USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/toppler
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/toppler/toppler.hsc

.include <bsd.port.mk>
