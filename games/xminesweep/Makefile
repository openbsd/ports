# $OpenBSD: Makefile,v 1.15 2004/11/28 22:41:26 espie Exp $

COMMENT=	"Windows minesweeper"

DISTNAME=	xminesweep3.0
PKGNAME=	xminesweep-3.0
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.netlab.is.tsukuba.ac.jp/pub/X/our_collections/games/ \
		ftp://ftp.uni-halle.de/pub/X11/contrib/games/ \
		ftp://ftp.warwick.ac.uk/pub/x11/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
