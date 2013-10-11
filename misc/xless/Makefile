# $OpenBSD: Makefile,v 1.27 2013/10/11 10:56:00 naddy Exp $

COMMENT=	X11 viewer for text files

DISTNAME=	xless-1.7
REVISION=	4
CATEGORIES=	misc	

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xpm Xt c

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/} \
		ftp://ftp.cs.berkeley.edu/ucb/people/dglo/xless/

CONFIGURE_STYLE=imake
USE_GROFF=	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
