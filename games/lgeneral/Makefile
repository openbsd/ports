# $OpenBSD: Makefile,v 1.1.1.1 2001/08/11 00:58:26 pvalchev Exp $

COMMENT=	"turn-based strategy engine"

VERSION=	0.5.0
DISTNAME=	lgeneral-${VERSION}
CATEGORIES=	games x11
NEED_VERSION=	1.433

HOMEPAGE=	http://lgeneral.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= lgeneral

LIB_DEPENDS=	SDL.0.3:sdl-*-!no_x11:devel/sdl \
		SDL_mixer.0.0:sdl-mixer-*:devel/sdl-mixer

USE_X11=	Yes

CONFIGURE_STYLE= autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lgeneral
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/lgeneral

.include <bsd.port.mk>
