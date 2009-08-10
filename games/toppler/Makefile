# $OpenBSD: Makefile,v 1.17 2009/08/10 06:31:42 kili Exp $

COMMENT=		Nebulous rewrite of Tower Toppler

DISTNAME=		toppler-1.1.3
PKGNAME=		${DISTNAME}p1
CATEGORIES=		games

HOMEPAGE=		http://toppler.sourceforge.net/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xau Xdmcp Xext Xrandr Xrender c m \
			mikmod ogg pthread pthread-stubs smpeg sndio stdc++ \
			usbhid vorbis vorbisfile xcb z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=toppler/}

LIB_DEPENDS=		SDL_mixer::devel/sdl-mixer
RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--localstatedir=/var/games

USE_X11=		Yes
USE_LIBTOOL=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/toppler
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/toppler/toppler.hsc

.include <bsd.port.mk>
