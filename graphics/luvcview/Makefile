# $OpenBSD: Makefile,v 1.5 2009/03/15 18:29:31 espie Exp $

COMMENT=		V4L compatible video application

DISTNAME=		luvcview-20070512
PKGNAME=		${DISTNAME}p3
CATEGORIES=		graphics x11

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://mxhaard.free.fr/
MASTER_SITES=	${HOMEPAGE}/spca50x/Investigation/uvc/

LIB_DEPENDS=	SDL:sdl-1.2.4p1|sdl->=1.2.5:devel/sdl
WANTLIB=	c pthread

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS+="-I${X11BASE}/include -I${LOCALBASE}/include"

USE_X11=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/luvcview ${PREFIX}/bin

.include <bsd.port.mk>
