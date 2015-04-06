# $OpenBSD: Makefile,v 1.29 2015/04/06 16:58:43 jca Exp $

COMMENT=		graphic disk usage viewer

DISTNAME=		xdu-3.0
REVISION=		4
CATEGORIES=     	x11

# custom, MIT-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

EXTRACT_SUFX=		.tar.Z

CONFIGURE_STYLE=	imake
WRKDIST=		${WRKDIR}

NO_TEST=		Yes

.include <bsd.port.mk>
