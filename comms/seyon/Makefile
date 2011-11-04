# $OpenBSD: Makefile,v 1.28 2011/11/04 08:21:59 jasper Exp $

COMMENT=	communication package for X11

DISTNAME=	Seyon-2.14b
PKGNAME=	${DISTNAME:L}
REVISION=	4
CATEGORIES=	comms x11

MASTER_SITES=	ftp://sipb.mit.edu/pub/seyon/
EXTRACT_SUFX=	-tar.Z

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}/seyon

USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
