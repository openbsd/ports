# $OpenBSD: Makefile,v 1.10 2001/06/20 01:43:41 pvalchev Exp $

COMMENT=	"display X11 color names and colors"

DISTNAME=	xco
PKGNAME=	xco-1.3
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.cs.purdue.edu/pub/bingle/

MAINTAINER=	ports@openbsd.org

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xco
		${INSTALL_DATA} ${FILESDIR}/copyright ${PREFIX}/share/doc/xco

.include <bsd.port.mk>
