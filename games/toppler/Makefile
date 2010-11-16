# $OpenBSD: Makefile,v 1.22 2010/11/16 11:23:28 espie Exp $

COMMENT=		Nebulous rewrite of Tower Toppler

DISTNAME=		toppler-1.1.3
REVISION =		2
CATEGORIES=		games

HOMEPAGE=		http://toppler.sourceforge.net/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xau Xdmcp Xext Xrandr Xrender c m \
			mikmod ogg pthread pthread-stubs smpeg sndio stdc++ \
			usbhid vorbis vorbisfile xcb z SDL_mixer

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=toppler/}

LIB_DEPENDS=		devel/sdl-mixer
RUN_DEPENDS=		devel/desktop-file-utils

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--localstatedir=/var/games

USE_LIBTOOL=		Yes
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/toppler
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/toppler/toppler.hsc

.include <bsd.port.mk>
