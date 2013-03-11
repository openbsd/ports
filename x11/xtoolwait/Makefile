# $OpenBSD: Makefile,v 1.19 2013/03/11 11:46:19 espie Exp $

COMMENT=	tool startup utility for X11

DISTNAME=	xtoolwait-1.3
REVISION=	0
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
