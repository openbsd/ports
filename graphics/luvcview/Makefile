# $OpenBSD: Makefile,v 1.3 2008/08/25 08:52:56 mglocker Exp $

COMMENT=		V4L compatible video application

DISTNAME=		luvcview-20070512
PKGNAME=		${DISTNAME}p1
CATEGORIES=		graphics x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://mxhaard.free.fr/
MASTER_SITES=	${HOMEPAGE}/spca50x/Investigation/uvc/

LIB_DEPENDS=	SDL:sdl-1.2.4p1,>=1.2.5:devel/sdl
WANTLIB=	X11 c pthread

MAKE_FLAGS=	CFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/luvcview ${PREFIX}/bin

.include <bsd.port.mk>
