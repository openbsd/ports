# $OpenBSD: Makefile,v 1.18 2013/10/11 20:40:18 naddy Exp $

COMMENT=	magnify, rotate, mirror the image on the X11 screen

DISTNAME=	xzoom-0.3
REVISION=	0
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SUNSITE:=libs/X/}
EXTRACT_SUFX=	.tgz

# custom
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		X11 Xext c 

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
