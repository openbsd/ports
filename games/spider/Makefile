# $OpenBSD: Makefile,v 1.14 2004/11/28 22:41:21 espie Exp $

COMMENT=	"challenging double decked solitaire game"

DISTNAME=	spider
PKGNAME=	spider-1.1
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.uni-koeln.de/windows/xcontrib/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c

CONFIGURE_STYLE=imake
INSTALL_TARGET=	install install.doc

NO_REGRESS=	Yes

.include <bsd.port.mk>
