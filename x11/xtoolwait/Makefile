# $OpenBSD: Makefile,v 1.20 2013/10/11 20:40:16 naddy Exp $

COMMENT=	tool startup utility for X11

DISTNAME=	xtoolwait-1.3
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/} \
		http://www.hacom.nl/~richard/software/

HOMEPAGE=	http://www.hacom.nl/~richard/software/xtoolwait.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xau Xdmcp Xext c 

USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
