# $OpenBSD: Makefile,v 1.3 2001/07/11 16:47:54 pvalchev Exp $

COMMENT=	"organic fireworks demo"

DISTNAME=	fire-1.0
CATEGORIES=	games
NEED_VERSION=	1.419

HOMEPAGE=	http://www.libsdl.org/projects/fire/

MASTER_SITES=	${HOMEPAGE}/src/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL.0.2:sdl-*-!no_x11:devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fire
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fire

.include <bsd.port.mk>
