# $OpenBSD: Makefile,v 1.15 2008/02/02 09:18:54 steven Exp $

COMMENT=	full-screen image to adjust your monitor

DISTNAME=	xtestpicture-1.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c 

MASTER_SITES=	ftp://ftp.interface-business.de/pub/outgoing/

USE_X11=	Yes
CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
