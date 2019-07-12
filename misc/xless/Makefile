# $OpenBSD: Makefile,v 1.29 2019/07/12 20:47:55 sthen Exp $

COMMENT=	X11 viewer for text files

DISTNAME=	xless-1.7
REVISION=	4
CATEGORIES=	misc	

PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xpm Xt c

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/} \
		ftp://ftp.cs.berkeley.edu/ucb/people/dglo/xless/

CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
