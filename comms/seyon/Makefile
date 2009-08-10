# $OpenBSD: Makefile,v 1.22 2009/08/10 06:30:30 kili Exp $

COMMENT=	communication package for X11

DISTNAME=	Seyon-2.14b
PKGNAME=	seyon-2.14bp1
CATEGORIES=	comms x11

MASTER_SITES=	ftp://sipb.mit.edu/pub/seyon/
EXTRACT_SUFX=	-tar.Z

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xp Xpm Xt c pthread-stubs xcb

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}/seyon

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
