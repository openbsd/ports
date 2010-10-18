# $OpenBSD: Makefile,v 1.21 2010/10/18 18:00:20 espie Exp $

COMMENT=	skat card game

DISTNAME=	xskat-4.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games
HOMEPAGE=	http://www.xskat.de/xskat.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c pthread-stubs xcb

MASTER_SITES=	http://www.xskat.de/

CONFIGURE_STYLE=imake
USE_X11=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
