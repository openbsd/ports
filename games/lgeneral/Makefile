# $OpenBSD: Makefile,v 1.9 2005/11/03 18:28:55 naddy Exp $

COMMENT=	"turn-based strategy engine"

VERSION=	0.5.0
DISTNAME=	lgeneral-${VERSION}
CATEGORIES=	games x11

HOMEPAGE=	http://lgeneral.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c m pthread usbhid

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgeneral/}

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer

USE_X11=	Yes

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lgeneral
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/lgeneral

.include <bsd.port.mk>
