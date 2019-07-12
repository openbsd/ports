# $OpenBSD: Makefile,v 1.30 2019/07/12 20:51:26 sthen Exp $

COMMENT=		graphic disk usage viewer

DISTNAME=		xdu-3.0
REVISION=		4
CATEGORIES=     	x11

# custom, MIT-like
PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

EXTRACT_SUFX=		.tar.Z

CONFIGURE_STYLE=	imake
WRKDIST=		${WRKDIR}

NO_TEST=		Yes

.include <bsd.port.mk>
