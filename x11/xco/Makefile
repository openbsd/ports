# $OpenBSD: Makefile,v 1.12 2001/10/28 13:05:50 espie Exp $

COMMENT=	"display X11 color names and colors"

DISTNAME=	xco
PKGNAME=	xco-1.3
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.cs.purdue.edu/pub/bingle/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=	imake

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xco
		${INSTALL_DATA} ${FILESDIR}/copyright ${PREFIX}/share/doc/xco

.include <bsd.port.mk>
