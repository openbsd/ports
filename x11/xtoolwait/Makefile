# $OpenBSD: Makefile,v 1.22 2019/07/12 20:51:30 sthen Exp $

COMMENT=	tool startup utility for X11

DISTNAME=	xtoolwait-1.3
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/} \
		http://www.hacom.nl/~richard/software/

HOMEPAGE=	http://www.hacom.nl/~richard/software/xtoolwait.html

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xau Xdmcp Xext c 

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
