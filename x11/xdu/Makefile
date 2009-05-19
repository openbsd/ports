# $OpenBSD: Makefile,v 1.20 2009/05/19 14:03:45 naddy Exp $

COMMENT=		graphic disk usage viewer

DISTNAME=		xdu-3.0
PKGNAME=		${DISTNAME}p1
CATEGORIES=     	x11

# custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c

HOMEPAGE=		http://sd.wareonearth.com/~phil/xdu/

MASTER_SITES=		http://sd.wareonearth.com/~phil/xdu/ \
			ftp://ftp.arl.mil/pub/
EXTRACT_SUFX=		.tar.Z

USE_X11=		Yes
CONFIGURE_STYLE=	imake
WRKDIST=		${WRKDIR}

NO_REGRESS=		Yes

.include <bsd.port.mk>
