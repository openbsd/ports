# OpenBSD makefile for:   xmold
# Version required:    1.0
# Date created:        December 21, 1997
# Whom:                Don Schmidt
#
# $OpenBSD: Makefile,v 1.12 2002/03/21 21:25:57 espie Exp $
#

COMMENT=	"mold spreading over your X11 screen"

DISTNAME=	xmold
PKGNAME=        xmold-1.0
CATEGORIES=	x11
NEED_VERSION=	1.515
MASTER_SITES=	ftp://cclub.tutcc.tut.ac.jp/pub/xwin/

HOMEPAGE=	http://cclub.cc.tut.ac.jp/lib/xwin/xmold.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE=	imake

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	@${INSTALL_PROGRAM} ${WRKSRC}/xmold ${PREFIX}/bin

.include <bsd.port.mk>
