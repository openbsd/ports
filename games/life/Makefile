# $OpenBSD: Makefile,v 1.7 2007/07/18 08:47:06 jasper Exp $

COMMENT=	SDL clone of the popular Game of Life

DISTNAME=	life-1.0
PKGNAME=	${DISTNAME}p0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread stdc++ usbhid

NO_REGRESS=	Yes
USE_X11=	Yes

LIB_DEPENDS=	SDL::devel/sdl

WRKDIST=${WRKDIR}/life

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/life ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/life
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/life

.include <bsd.port.mk>
