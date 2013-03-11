# $OpenBSD: Makefile,v 1.26 2013/03/11 11:23:58 espie Exp $

COMMENT=	X11 viewer for text files

DISTNAME=	xless-1.7
REVISION=	3
CATEGORIES=	misc	

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xpm Xt c

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/} \
		ftp://ftp.cs.berkeley.edu/ucb/people/dglo/xless/

CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
