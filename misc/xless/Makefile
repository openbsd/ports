# $OpenBSD: Makefile,v 1.22 2010/10/18 20:52:10 espie Exp $

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
USE_X11=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
