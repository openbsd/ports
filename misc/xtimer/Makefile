# $OpenBSD: Makefile,v 1.14 2004/12/22 11:50:30 alek Exp $

COMMENT=	"super simple digital timer for X11"

DISTNAME=	xtimer-8089
PKGNAME=	xtimer-0.8089
CATEGORIES=	misc

MASTER_SITES=	http://hp.vector.co.jp/authors/VA004959/xtimer/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
