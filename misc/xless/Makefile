# $OpenBSD: Makefile,v 1.20 2009/08/10 06:33:02 kili Exp $

COMMENT=	X11 viewer for text files

DISTNAME=	xless-1.7
PKGNAME=	${DISTNAME}p1
CATEGORIES=	misc	

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xp Xpm Xt c pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/} \
		ftp://ftp.cs.berkeley.edu/ucb/people/dglo/xless/

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
