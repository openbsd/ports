# OpenBSD makefile for:   xmold
# Version required:    1.0
# Date created:        December 21, 1997
# Whom:                Don Schmidt
#
# $OpenBSD: Makefile,v 1.8 2000/12/26 16:07:10 kevlo Exp $
#

DISTNAME=	xmold
PKGNAME=        xmold-1.0
CATEGORIES=	x11
NEED_VERSION=	1.305
MASTER_SITES=	ftp://cclub.tutcc.tut.ac.jp/pub/xwin/

HOMEPAGE=	http://cclub.cc.tut.ac.jp/lib/xwin/xmold.html

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	@${INSTALL_PROGRAM} ${WRKSRC}/xmold ${PREFIX}/bin

.include <bsd.port.mk>
