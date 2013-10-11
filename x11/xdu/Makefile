# $OpenBSD: Makefile,v 1.27 2013/10/11 20:40:05 naddy Exp $

COMMENT=		graphic disk usage viewer

DISTNAME=		xdu-3.0
REVISION=		3
CATEGORIES=     	x11

# custom
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

HOMEPAGE=		http://sd.wareonearth.com/~phil/xdu/

MASTER_SITES=		http://sd.wareonearth.com/~phil/xdu/ \
			ftp://ftp.arl.mil/pub/
EXTRACT_SUFX=		.tar.Z

USE_GROFF =		Yes
CONFIGURE_STYLE=	imake
WRKDIST=		${WRKDIR}

NO_TEST=		Yes

.include <bsd.port.mk>
