# $OpenBSD: Makefile,v 1.8 2006/10/26 06:10:01 ray Exp $

COMMENT=	"organic fireworks demo"

DISTNAME=	fire-1.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games

HOMEPAGE=	http://www.libsdl.org/projects/fire/

MASTER_SITES=	${HOMEPAGE}/src/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c m pthread usbhid

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fire
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fire

.include <bsd.port.mk>
