# $OpenBSD: Makefile,v 1.15 2010/10/19 08:14:01 espie Exp $

COMMENT=	magnify, rotate, mirror the image on the X11 screen

DISTNAME=	xzoom-0.3
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SUNSITE:=libs/X/}
EXTRACT_SUFX=	.tgz

# custom
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	may not sell
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c 

USE_X11=		Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
