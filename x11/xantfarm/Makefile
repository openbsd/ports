# $OpenBSD: Makefile,v 1.15 2004/12/19 17:15:17 alek Exp $

COMMENT=	"ant hill simulation on X11 root window"

DISTNAME=	xantfarm
PKGNAME=        xantfarm-1.16
CATEGORIES=	x11

MASTER_SITES=   ftp://ftp.kuis.kyoto-u.ac.jp/Linux/JG/other-sources/
DISTFILES=	xantfarm23oct91.tar.gz

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c

USE_X11=	Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
