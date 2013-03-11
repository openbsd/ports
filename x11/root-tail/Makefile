# $OpenBSD: Makefile,v 1.22 2013/03/11 11:46:15 espie Exp $

COMMENT=	tails a given file anywhere on your X11 root window

DISTNAME=	root-tail-1.2
REVISION=	1
CATEGORIES=	x11

HOMESITE=	http://www.goof.com/pcg/marc
HOMEPAGE=	${HOMESITE}/root-tail.html

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += X11 Xau Xdmcp Xext c

MASTER_SITES=		${HOMESITE}/data/

CONFIGURE_STYLE=	imake
USE_GROFF =		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
