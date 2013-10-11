# $OpenBSD: Makefile,v 1.27 2013/10/11 21:21:04 naddy Exp $

COMMENT=	display all (ok, most of) the colors in the universe

DISTNAME=	xcolors
PKGNAME=	xcolors-1.3
REVISION=	3
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.tut.ac.jp/X11/X11R6/contrib/programs/ \
		ftp://ftp.weird.com/pub/mirror/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xpm Xt c m 

WRKDIST=	${WRKDIR}/xcolors
CONFIGURE_STYLE=imake

NO_TEST=	Yes

.include <bsd.port.mk>
