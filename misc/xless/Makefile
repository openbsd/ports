# $OpenBSD: Makefile,v 1.19 2007/11/14 09:43:40 steven Exp $

COMMENT=	X11 viewer for text files

DISTNAME=	xless-1.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	misc	

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xp Xpm Xt c

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/} \
		ftp://ftp.cs.berkeley.edu/ucb/people/dglo/xless/

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
