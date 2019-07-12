# $OpenBSD: Makefile,v 1.29 2019/07/12 20:51:23 sthen Exp $

COMMENT=	display files containing g3 and/or g4 coded fax pages

DISTNAME=	viewfax-2.6
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.ping.de/pub/unix/

CONFIGURE_STYLE=	imake

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c

NO_TEST=	Yes

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/viewfax

.include <bsd.port.mk>
