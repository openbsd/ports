# $OpenBSD: Makefile,v 1.14 2002/10/29 19:48:59 naddy Exp $

COMMENT=	"display X11 color names and colors"

DISTNAME=	xco
PKGNAME=	xco-1.3
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.cs.purdue.edu/pub/bingle/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xco
		${INSTALL_DATA} ${FILESDIR}/copyright ${PREFIX}/share/doc/xco

.include <bsd.port.mk>
