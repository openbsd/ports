# $OpenBSD: Makefile,v 1.18 2010/07/30 06:59:02 ajacoutot Exp $

COMMENT=	display a dialog box and prompt user for text

DISTNAME=	xprompt-1.4
REVISION=	0
CATEGORIES=	x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c 

USE_X11=		Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
