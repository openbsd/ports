# $OpenBSD: Makefile,v 1.21 2010/10/19 08:14:00 espie Exp $

COMMENT=	find color values by graphical color mixing

DISTNAME=	xcoloredit
PKGNAME=	xcoloredit-1.2
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.tar.Z

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

USE_X11=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
