# $OpenBSD: Makefile,v 1.13 2002/10/29 19:49:00 naddy Exp $

COMMENT=	"mold spreading over your X11 screen"

DISTNAME=	xmold
PKGNAME=        xmold-1.0
CATEGORIES=	x11

MASTER_SITES=	ftp://cclub.tutcc.tut.ac.jp/pub/xwin/

HOMEPAGE=	http://cclub.cc.tut.ac.jp/lib/xwin/xmold.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	@${INSTALL_PROGRAM} ${WRKSRC}/xmold ${PREFIX}/bin

.include <bsd.port.mk>
