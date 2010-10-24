# $OpenBSD: Makefile,v 1.23 2010/10/24 21:26:49 ajacoutot Exp $

COMMENT=	X11 viewer for text files

DISTNAME=	xless-1.7
PKGNAME=	${DISTNAME}p2
CATEGORIES=	misc	

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xpm Xt c pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/} \
		ftp://ftp.cs.berkeley.edu/ucb/people/dglo/xless/

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
