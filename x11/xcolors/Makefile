# $OpenBSD: Makefile,v 1.21 2010/04/24 20:18:40 naddy Exp $

COMMENT=	display all (ok, most of) the colors in the universe

DISTNAME=	xcolors
PKGNAME=	xcolors-1.3p2
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.tut.ac.jp/X11/X11R6/contrib/programs/ \
		ftp://ftp.weird.com/pub/mirror/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xpm Xt c m 

USE_X11=	Yes
WRKDIST=	${WRKDIR}/xcolors
CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
