# $OpenBSD: Makefile,v 1.6 2002/05/26 01:07:57 brad Exp $

COMMENT=	"turn-based strategy engine"

VERSION=	0.5.0
DISTNAME=	lgeneral-${VERSION}
CATEGORIES=	games x11
NEED_VERSION=	1.525

HOMEPAGE=	http://lgeneral.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgeneral/}

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer

USE_X11=	Yes

CONFIGURE_STYLE= autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lgeneral
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/lgeneral

.include <bsd.port.mk>
