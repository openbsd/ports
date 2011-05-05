# $OpenBSD: Makefile,v 1.25 2011/05/05 18:19:11 gsoares Exp $

COMMENT=	X11 viewer for text files

DISTNAME=	xless-1.7
REVISION=	3
CATEGORIES=	misc	

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xpm Xt c

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/} \
		ftp://ftp.cs.berkeley.edu/ucb/people/dglo/xless/

CONFIGURE_STYLE=imake
NO_REGRESS=	Yes

.include <bsd.port.mk>
