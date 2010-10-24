# $OpenBSD: Makefile,v 1.22 2010/10/24 21:19:03 ajacoutot Exp $

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
USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
