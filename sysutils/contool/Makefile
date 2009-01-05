# $OpenBSD: Makefile,v 1.28 2009/01/05 10:55:18 giovanni Exp $

COMMENT=	console tool for openlook

DISTNAME=	contool-3.3a
PKGNAME=	${DISTNAME}p2
CATEGORIES=	sysutils

MASTER_SITES=	ftp://ftp.kfu.com/pub/

PERMIT_PACKAGE_CDROM=	NOFEE
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	NOFEE
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext c

LIB_DEPENDS=	xview.>=3,olgx.>=3::x11/xview/lib
BUILD_DEPENDS=	::x11/xview/config

WRKDIST=	${WRKDIR}
CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/help

.include <bsd.port.mk>
