# $OpenBSD: Makefile,v 1.17 2013/03/11 11:46:19 espie Exp $

COMMENT=	magnify, rotate, mirror the image on the X11 screen

DISTNAME=	xzoom-0.3
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
