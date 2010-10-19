# $OpenBSD: Makefile,v 1.17 2010/10/19 08:14:01 espie Exp $

COMMENT=	tool startup utility for X11

DISTNAME=	xtoolwait-1.3
REVISION=	0
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/} \
		http://www.hacom.nl/~richard/software/

HOMEPAGE=	http://www.hacom.nl/~richard/software/xtoolwait.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext c 

USE_X11=		Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
