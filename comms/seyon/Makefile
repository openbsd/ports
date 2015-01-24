# $OpenBSD: Makefile,v 1.31 2015/01/24 13:46:44 schwarze Exp $

COMMENT=	communication package for X11

DISTNAME=	Seyon-2.14b
PKGNAME=	${DISTNAME:L}
REVISION=	5
CATEGORIES=	comms x11

MASTER_SITES=	ftp://sipb.mit.edu/pub/seyon/
EXTRACT_SUFX=	-tar.Z

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}/seyon

NO_TEST=	Yes

.include <bsd.port.mk>
