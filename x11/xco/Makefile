# $OpenBSD: Makefile,v 1.25 2019/07/12 20:51:25 sthen Exp $

COMMENT=	display X11 color names and colors

DISTNAME=	xco
PKGNAME=	xco-1.3
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.cs.purdue.edu/pub/bingle/

# BSD-like, but "may not modify"
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xco
		${INSTALL_DATA} ${FILESDIR}/copyright ${PREFIX}/share/doc/xco

.include <bsd.port.mk>
