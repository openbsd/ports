# $OpenBSD: Makefile,v 1.24 2015/09/11 19:50:48 sthen Exp $

COMMENT=	mold spreading over your X11 screen

DISTNAME=	xmold
PKGNAME=	xmold-1.0
REVISION=	1
CATEGORIES=	x11

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=	X11 Xau Xdmcp Xext c m 

MASTER_SITES=	http://distcache.freebsd.org/ports-distfiles/

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmold ${PREFIX}/bin

.include <bsd.port.mk>
