# $OpenBSD: Makefile,v 1.19 2006/11/13 10:08:12 steven Exp $

COMMENT=	"communication package for X11"

DISTNAME=	Seyon-2.14b
PKGNAME=	seyon-2.14b
CATEGORIES=	comms x11

MASTER_SITES=	ftp://sipb.mit.edu/pub/seyon/
EXTRACT_SUFX=	-tar.Z

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}/seyon

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
