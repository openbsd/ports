# $OpenBSD: Makefile,v 1.16 2004/12/22 11:50:30 alek Exp $

COMMENT=	"X11 viewer for text files"

DISTNAME=	xless-1.7
CATEGORIES=	misc	

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/} \
		ftp://ftp.cs.berkeley.edu/ucb/people/dglo/xless/

CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
