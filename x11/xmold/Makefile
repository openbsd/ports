# $OpenBSD: Makefile,v 1.15 2004/05/24 08:31:13 xsa Exp $

COMMENT=	"mold spreading over your X11 screen"

DISTNAME=	xmold
PKGNAME=        xmold-1.0
CATEGORIES=	x11

HOMEPAGE=	http://cclub.cc.tut.ac.jp/lib/xwin/xmold.html

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MASTER_SITES=	ftp://cclub.cc.tut.ac.jp/pub/xwin/

USE_X11=		Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmold ${PREFIX}/bin

.include <bsd.port.mk>
